/* #####################################
*
* an example Test program to select pulse length and nozzle number
* then fire the nozzle
*
* Parkview 2022-06-05 (I am NOT a software guy) Code for V0.6 OpenPyro Jet PCB's.
* MIT License - Open Source Software
*
* See: https://github.com/Sindry-Manufacturing/OpenPyrojet-Jetpack  ; for much more complete software solution
*
List of todo's:
  * TODO: change Rotary Encoder over to proper number tracking!
  * TODO: setup power LED with PWM so we can adjust brightness
  * TODO: add in ADC routine to record VSW current usage during
      firing a nozzle.
  * TODO: Be great to show the data as a graph on the OLED screen
  * DONE: get menu working correctly on screen
  * DONE: get nozzles firing with set parameters
*/

#include <Arduino.h>
#include <Wire.h>
#include "SSD1306Wire.h"
#include "FastLED.h"
#include "AiEsp32RotaryEncoder.h"
#include "spi.h"
//#include "main.h"

#define OLED_DISPLAY true    // Enable OLED Display
#define OLED_DISPLAY_SSD1306 // OLED Display Type: SSD1306(OLED_DISPLAY_SSD1306) / SH1106(OLED_DISPLAY_SH1106), comment this line out to disable oled
#define numRGBLED 1          // number of RGB LEDs to light up
#define BRIGHTNESS 80        // Control the brightness of RGB led(s)
#define SATURATION 255       // Control the saturation of RGB led(s)
#define LED_TYPE WS2812      // type of RGB LED
#define RGBLEDPin 32         // GPIO that the WS2812 RGB LED is on
#define COLOR_ORDER GRB      // WS2812 data sequence
#define PowerLEDPin 27       // GPIO of the Power LED D1
#define WAIT 300             // delay loop sleep time
#define buzzerPin 25         // Buzzer GPIO pin
#define userSWPin 33         // User switch GPIO pin
#define DAC2 26              // spare GPIO output pin. Could be used for PWM/enable pump motor control.
#define bootPin 0            // Boot switch GPIO pin
#define ROTARY_ENCODER_BUTTON_PIN 35
#define ROTARY_ENCODER_A_PIN 39
#define ROTARY_ENCODER_B_PIN 36
#define ROTARY_ENCODER_STEPS 4    // 1, 2, 4 steps per rotary step bump
#define ROTARY_ENCODER_VCC_PIN -1 // Encoder is NOT connected direct to VCC
#define nozzle0 14
#define nozzle1 13
#define nozzle2 4
#define nozzle3 16
#define nozzle4 17
#define nozzle5 18
#define nozzle6 19
#define nozzle7 23
#define HSPI_CS 5
#define HSPI_MOSI 15
#define HSPI_MISO 2
#define HSPI_SCLK 12
#define powerLEDbrightness 50 // set Green Power LED to 50% brightness
#define vswChan 0             // ADC12 chan 0 is the VSW measurement port

uint8_t nozzles[8] = {14, 13, 4, 16, 17, 18, 19, 23};               // list of nozzle GPIO firing pins
float senseResistors[8] = {.04, .04, .04, .04, .03, .03, .03, .03}; // list of nozzle GPIO firing pins
const uint32_t FREQ = 400000;                                       // i2C clock Frequencies: 100000; 400000; 1700000; 3400000
const uint8_t I2C_SDA_PIN = 21;                                     // ESP32 WROOM32 i2c SDA Pin
const uint8_t I2C_SCL_PIN = 22;                                     // ESP32 WROOM32 i2c SCL Pin
const uint8_t DISPLAY_WIDTH = 128;                                  // OLED display pixel width
const uint8_t DISPLAY_HEIGHT = 64;                                  // OLED display pixel height
bool ledMode = 0;
bool circleValues = false; // circle around rotary encoder or not
// bool circleValues = true;          // circle around rotary encoder or not
uint8_t menuState = 1;                // entry state of the menuState machine
uint8_t nozzleNumber = 1;             // current nozzle number selected
uint8_t pulseLength = 1;              // current pulse length in miliSeconds
static const int spiClk = 12000000;   // Min is 8MHz, Max is 16MHz
float vRef = 5.253;                   // ADC128 Reference Voltage.  This needs to be changed if you modify the PCB design (R15/R14 ratio)
float vADC = vRef / 4096;             // minimal ADC unit
uint8_t LEDwarning = BRIGHTNESS + 50; // RGB LED Warning brightness level

SPIClass *hspi = NULL;

CRGB leds[numRGBLED];

AiEsp32RotaryEncoder rotaryEncoder = AiEsp32RotaryEncoder(ROTARY_ENCODER_A_PIN, ROTARY_ENCODER_B_PIN, ROTARY_ENCODER_BUTTON_PIN, ROTARY_ENCODER_VCC_PIN, ROTARY_ENCODER_STEPS);

#ifdef OLED_DISPLAY_SSD1306
// use a 128x64 pixel screen
SSD1306Wire display(0x3c, I2C_SDA_PIN, I2C_SCL_PIN);
#endif
// Note: move to a 128x128px OLED screen based on the SSD1327 controller

void blinkPowerLED()
{
  // blink the Green Power/User LEDs
  // should change this over to ledc routine, so we can control the brightness
  digitalWrite(PowerLEDPin, LOW);
  delay(WAIT);
  digitalWrite(PowerLEDPin, HIGH);
}

void SoundBuzzer()
{
  //  sound the buzzer with a 4KHz PWM
  ledcWrite(0, 127); // turn on buzzer
  delay(WAIT);
  ledcWrite(0, 0); // turn buzzer off
}

void blinkRGB()
{
  // cycle the WS2812 RGB LEDS to show they are all working ok
  leds[0] = CRGB::Red;
  FastLED.show();
  delay(WAIT);
  leds[0] = CRGB::Green;
  FastLED.show();
  delay(WAIT);
  leds[0] = CRGB::Blue;
  FastLED.show();
  delay(WAIT);
  leds[0] = CRGB::Black;
  FastLED.show();
}

void OLED_Header()
{
  // add a 1 line header to the OLED screen.
  display.clear();
  display.setTextAlignment(TEXT_ALIGN_LEFT);
  display.drawString(0, 0, "OpenPryoJet");
  display.drawLine(0, 12, DISPLAY_WIDTH, 12);
  // display.setTextAlignment(TEXT_ALIGN_RIGHT);
  display.setTextAlignment(TEXT_ALIGN_LEFT);
  display.display();
}

void displayText(int line, char *textline)
{
  // update menu with new data, Line one starts 12 pixels down
  OLED_Header();
  display.drawString(2, line * 12, textline);
  display.display();
}

void rotary_onButtonClick()
{
  static unsigned long lastTimePressed = 0;
  char msg[14];
  int Hue = 0;
  if (millis() - lastTimePressed < 200)
    return;
  lastTimePressed = millis();
  Hue = rotaryEncoder.readEncoder();
  Serial.print("Selected value is ");
  Serial.println(Hue, 1);
  sprintf(msg, "Encoder: %3d", Hue);
  displayText(30, msg);
  // Serial.print(numberSelector.getValue(), 1);
  Serial.println(" ***********************");
}

void rotary_loop()
{
  // dont print anything unless value changed
  if (!rotaryEncoder.encoderChanged())
  {
    Serial.println(rotaryEncoder.readEncoder());
    return;
  }
  Serial.print("Value: ");
  Serial.println(rotaryEncoder.readEncoder());
}

void IRAM_ATTR readEncoderISR()
{
  // Rotary Encoder Interrupt routine
  rotaryEncoder.readEncoder_ISR();
}

float readADC(SPIClass *spi, uint8_t channel)
{
  // reads the ADC128 8 channel ADC IC.  Pass in the channel number to read, and pass out the voltage being read.
  // very inefficient.  Should be using pointers with a buffer.
  uint16_t hiByte = 0;
  uint16_t chan = (channel & 0x7) << 11;
  // uint32_t startTime = micros();
  digitalWrite(HSPI_CS, LOW);     // pull ss/cs low to turn on ADC128 IC and to initiate data transfer
                                  // delayMicroseconds(50);
  hiByte = spi->transfer16(chan); // we send it the channel number shifted into the MSB and get back the 12bit reading
  digitalWrite(HSPI_CS, HIGH);    // pull ss/cs high to signify end of data transfer
  // uint32_t endTime = micros();
  // Serial.print("MicroSeconds to read sensor: "); // need a test here to fix auto resets
  // Serial.println(endTime - startTime);           // controller can lockup and reset here.  Maybe time has cycled back though 0?
  // Serial.println(hiByte);
  return (hiByte * vADC);
}

void buffADC(SPIClass *spi, uint8_t channel, uint16_t firetime, uint16_t buff[], uint8_t bufferSize)
{
  // reads one of the ADC128 8 channel ADC Ports.  Pass in the channel number to read
  uint16_t hiByte = 0;
  uint16_t chan = 0;
  // uint16_t chan = (channel & 0x7) << 11;
  uint32_t startTime = micros();
  uint32_t endTime = startTime + firetime;
  uint32_t currentTime = 0;
  Serial.print("Firetime: ");
  Serial.println(firetime);
  Serial.print("Buffer Size: ");
  Serial.println(bufferSize);
  digitalWrite(HSPI_CS, LOW); // pull ss/cs low to turn on ADC128 IC and to initiate data transfer
  for (uint8_t i = 0; i < bufferSize + 1; i++)
  {
    currentTime = micros();
    if (currentTime < endTime)
    {
      if ((i > 40) & (i < 80))
      {
        digitalWrite(23, HIGH); // pull ss/cs low to turn on ADC128 IC and to initiate data transfer
      }
      else
      {
        digitalWrite(23, LOW); // pull ss/cs low to turn on ADC128 IC and to initiate data transfer
      }
      *(buff + i) = spi->transfer16(chan); // we send it the channel number shifted into the MSB and get back the 12bit reading
    }
    else
    {
      // digitalWrite(HSPI_CS, HIGH);         // pull ss/cs high to signify end of data transfer. only need to do this once though.  Fix the code.
      *(buff + i) = spi->transfer16(chan); // we send it the channel number shifted into the MSB and get back the 12bit reading
    }
  }
  digitalWrite(HSPI_CS, HIGH); // pull ss/cs high to signify end of data transfer. only need to do this once though.  Fix the code.
  // return;
}

void setup()
{
  // put your setup code here, to run once:
  ledcSetup(0, 4000, 8);
  ledcAttachPin(buzzerPin, 0);
  pinMode(bootPin, INPUT);
  pinMode(userSWPin, INPUT);
  pinMode(PowerLEDPin, OUTPUT);
  pinMode(nozzle0, OUTPUT);
  pinMode(nozzle1, OUTPUT);
  pinMode(nozzle2, OUTPUT);
  pinMode(nozzle3, OUTPUT);
  pinMode(nozzle4, OUTPUT);
  pinMode(nozzle5, OUTPUT);
  pinMode(nozzle6, OUTPUT);
  pinMode(nozzle7, OUTPUT);
  digitalWrite(nozzle0, LOW);
  digitalWrite(nozzle1, LOW);
  digitalWrite(nozzle2, LOW);
  digitalWrite(nozzle3, LOW);
  digitalWrite(nozzle4, LOW);
  digitalWrite(nozzle5, LOW);
  digitalWrite(nozzle6, LOW);
  digitalWrite(nozzle7, LOW);
  digitalWrite(PowerLEDPin, HIGH);
  blinkPowerLED();
  Serial.begin(115200);
  Serial.println("");
  Serial.println("/n Serial setup done!");
  Wire.begin(I2C_SDA_PIN, I2C_SCL_PIN, FREQ); //(SDA, SCL): uint8_t slaveAddr, int sda=-1, int scl=-1, uint32_t frequency=0
  FastLED.addLeds<LED_TYPE, RGBLEDPin, COLOR_ORDER>(leds, numRGBLED).setCorrection(TypicalLEDStrip);
  FastLED.setBrightness(BRIGHTNESS);
  blinkRGB();
#if OLED_DISPLAY
  display.init();
  display.flipScreenVertically(); // setup depends on how the PCB is mounted
  display.setContrast(255);
  display.setFont(ArialMT_Plain_10);
  display.setColor(WHITE);
  display.setTextAlignment(TEXT_ALIGN_LEFT);
  display.drawLine(0, 12, DISPLAY_WIDTH, 12);
  display.display();
#endif
  OLED_Header();
  rotaryEncoder.begin();
  rotaryEncoder.setup(readEncoderISR);
  rotaryEncoder.setBoundaries(0, 255, circleValues); // minValue, maxValue, circleValues true|false (when max go to min and vice versa)
  rotaryEncoder.setEncoderValue(1);                  // set the starting number
  rotaryEncoder.setAcceleration(150);                // Acceleration 2-255; 0 or 1 disables Accel.
  // set RGB LED to State 1
  leds[0] = CHSV(96, 255, BRIGHTNESS); // set to Green
  FastLED.show();
  // setup for SPI ADC IC
  hspi = new SPIClass(HSPI);
  pinMode(HSPI_CS, OUTPUT);                              // HSPI SS
  digitalWrite(HSPI_CS, HIGH);                           // pull ss/cs high to disable ADC128 IC
  hspi->begin(HSPI_SCLK, HSPI_MISO, HSPI_MOSI, HSPI_CS); // SCLK, MISO, MOSI, SS/CS
  // sound buzzer, to test and let people know setup has finished
  SoundBuzzer();
  Serial.println("end of setup!");
}

void loop()
{
  // put your main code here, to run repeatedly:
  // blinkRGB();
  float vsw = 0.0;
  float vsw1 = 0.0;
  uint8_t chnl = 0;
  uint8_t charPosition = 5;
  uint8_t reValue = 0;
  uint16_t minVolts = 8000;
  uint16_t maxVolts = 0;
  bool reButtonPress = false;          // stores state of Rotary Encoder button press
  uint8_t previousNozzleNumber = 63;   // stores previous value
  uint8_t previousPulseLength = 63;    // stores previous value
  uint8_t previousCalibrationMode = 0; // stores previous value
  if (LEDwarning > 255)
  {
    LEDwarning = 255;
  }
  if ((menuState == 3) && (digitalRead(userSWPin) == LOW))
  {
    // change this to use a buffer and pointers to read ADC128 IC
    // fire current nozzle for set number of mSec
    readADC(hspi, vswChan); // voltage divider ratio( R11/R9+R11).  change channel to read VSW voltage
    // delayMicroseconds(40); // is this delay still needed?? Yes it is, as it's the time for the mosfet to turn on
    vsw = readADC(hspi, vswChan); // voltage divider ratio( R11/R9+R11)
    if (nozzleNumber > 7)
    {
      nozzleNumber = 7;
    }
    // Nozzles 0-3 have 0.04 ohms resistors, Nozzles 4-7 have 0.03 ohm resistors
    chnl = 7; // hard fix the nozzle channel for testing purposes
    // chnl = nozzleNumber;
    uint16_t fireTime = pulseLength * 1000;
    uint8_t buffSize = 240; // data collection lasts for 25uSec per data point + 10% extra, which should be zeros
    // uint8_t buffSize = (fireTime + 25) / 25; // data collection lasts for 25uSec per data point + 10% extra, which should be zeros
    uint16_t buff[buffSize] = {0};
    Serial.print("Loop Buffer Size: ");
    Serial.println(buffSize);
    nozzleNumber = chnl;
    readADC(hspi, chnl); // change to read current nozzle
    // digitalWrite(nozzles[nozzleNumber], 1);
    uint32_t startTime = micros();
    buffADC(hspi, chnl, fireTime, buff, buffSize);
    uint32_t endTime = micros();
    // digitalWrite(nozzles[nozzleNumber], 0);
    if (startTime < endTime)
    {
      Serial.print("MicroSeconds to read sensor: ");
      Serial.println(endTime - startTime);
    }
    else
    {
      Serial.println("none");
    }
    SoundBuzzer();
    Serial.print("Bus voltage is: ");
    Serial.print(vsw * 11);
    Serial.println("V");
    Serial.print("Just Fired Nozzle: ");
    Serial.print(nozzleNumber);
    Serial.print(" [");
    Serial.print(nozzles[nozzleNumber]);
    Serial.print("] for: ");
    Serial.print(pulseLength);
    Serial.println(" mSec!");
    // go and display the recoded nozzle current values
    for (uint8_t i = 0; i < buffSize; i++)
    {
      Serial.println(buff[i] * vADC * 11); // divide by 1.5 for 0.03 ohm resistor; divide by 2 for 0.04 ohm resistor; time by 11 for VSW
      if (buff[i]<minVolts & buff[i]> 0)
      {
        minVolts = buff[i];
      }
      if (buff[i] > maxVolts)
      {
        maxVolts = buff[i];
      }
    }
    Serial.print("Max Sense Resistor Voltage: ");
    Serial.print(maxVolts * vADC);
    Serial.print("V and therefore max Current was: ");
    Serial.print(maxVolts * vADC / 1.5); // need to change to nozzle sense resistor array to calculate better
    Serial.print("A, min load resistance was: ");
    Serial.print((vsw * 11) / (maxVolts * vADC / 1.5));
    Serial.println(" Ohms");
    Serial.print("Min Sense Resistor Voltage: ");
    Serial.print(minVolts * vADC);
    Serial.print("V and therefore min Current was: ");
    Serial.print(minVolts * vADC / 1.5); // need to change to nozzle sense resistor array to calculate better
    Serial.print("A, max load resistance was: ");
    Serial.print((vsw * 11) / (minVolts * vADC / 1.5));
    Serial.println(" Ohms");
  }

  if (rotaryEncoder.encoderChanged())
  {
    // activate rotary encoder if its changed
    blinkPowerLED();
    //reValue = rotaryEncoder.readEncoder();
    Serial.print("New RE Value: ");
    Serial.println(reValue);
    switch (menuState)
    {
    // update current menu value with new RE value
    case 1:
      // update Nozzle number 0-7
      if (reButtonPress)
      {
        rotaryEncoder.setEncoderValue(previousNozzleNumber);
        reButtonPress = false;
      }
      nozzleNumber = rotaryEncoder.readEncoder();;
      if (nozzleNumber > 7)
      {
        nozzleNumber = 7;
        rotaryEncoder.setEncoderValue(7);
      }
      else if (nozzleNumber < 0)
      {
        nozzleNumber = 0;
        rotaryEncoder.setEncoderValue(0);
      }
      break;
    case 2:
      // update pulse Length value
      if (reButtonPress)
      {
        rotaryEncoder.setEncoderValue(previousPulseLength);
        reButtonPress = false;
      }
      //pulseLength = reValue;
      pulseLength = rotaryEncoder.readEncoder();;
      if (pulseLength > 20)
      {
        pulseLength = 20;
        rotaryEncoder.setEncoderValue(20);
      }
      else if (pulseLength < 1)
      {
        pulseLength = 1;
        rotaryEncoder.setEncoderValue(1);
      }
      break;
    case 3:
      // now set to fire current nozzle mode. Wait for User button press!
      break;
    }
  }
  if (rotaryEncoder.isEncoderButtonClicked())
  {
    Serial.println("RE switch pressed");
    // cycle around three menu states: 1) Nozzle #; 2) pulse length; 3) fire nozzle
    switch (menuState)
    {
    case 1:
      menuState = 2;
      leds[0] = CHSV(160, 255, BRIGHTNESS); // set to Blue
      FastLED.show();
      previousNozzleNumber = nozzleNumber;
      reButtonPress = true; // stores state of Rotary Encoder button press
      break;
    case 2:
      menuState = 3;
      leds[0] = CHSV(0, 255, LEDwarning); // set to RED
      FastLED.show();
      previousPulseLength = pulseLength;
      reButtonPress = true; // stores state of Rotary Encoder button press
      break;
    case 3:
      menuState = 1;
      leds[0] = CHSV(96, 255, BRIGHTNESS); // set to Green
      FastLED.show();
      reButtonPress = true; // stores state of Rotary Encoder button press
      break;
    }
    SoundBuzzer();
  }
  // update display to show new state and values
  OLED_Header();
  switch (menuState)
  {
  case 1:
    display.drawString(10, 1 * 12, "Nozzle No: ");
    display.drawString(13 * charPosition, 1 * 12, String(nozzleNumber));
    display.drawString(1, 2 * 12, "Pulse Length: ");
    display.drawString(16 * charPosition, 2 * 12, String(pulseLength));
    display.drawString(1, 3 * 12, "Ready to Fire!");

    break;
  case 2:
    display.drawString(1, 1 * 12, "Nozzle No: ");
    display.drawString(13 * charPosition, 1 * 12, String(nozzleNumber));
    display.drawString(10, 2 * 12, "Pulse Length: ");
    display.drawString(16 * charPosition, 2 * 12, String(pulseLength));
    display.drawString(1, 3 * 12, "Ready to Fire!");
    break;
  case 3:
    display.drawString(1, 1 * 12, "Nozzle No: ");
    display.drawString(13 * charPosition, 1 * 12, String(nozzleNumber));
    display.drawString(1, 2 * 12, "Pulse Length: ");
    display.drawString(16 * charPosition, 2 * 12, String(pulseLength));
    display.drawString(10, 3 * 12, "Ready to Fire!");
    break;
  default:
    display.drawString(0, 55, "Menu Error!");
    break;
  }
  display.display();
  delay(50);
}
