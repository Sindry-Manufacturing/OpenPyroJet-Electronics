/* #####################################
*
* an example Test program to output a ramping voltage from ESP32 GPIO 25 (DAC1 pin).  
* This needs to be connected to ADC121 input pin (i2C Add: 0x51), which is read via i2C
* 
* to run.  Press the Rotary Encoder switch a few times, till the DAC Output line is indented, 
* then press the User button to active the ADC Ramp and ADC read.  This will output a nn, yy output which 
* can then be read via the SerialPlot program.

*  NOTE: it has a lot of junk code as most of it has been migrated over from the OPJ Testing software
*
* Parkview 2022-05-05 (I am NOT a software guy)
* MIT License - Open Source Software
*
*
*/

#include <Arduino.h>
#include <Wire.h>
#include "SSD1306Wire.h"
#include "FastLED.h"
#include "AiEsp32RotaryEncoder.h"
#include "main.h"

#define OLED_DISPLAY true    // Enable OLED Display
#define OLED_DISPLAY_SSD1306 // OLED Display Type: SSD1306(OLED_DISPLAY_SSD1306) / SH1106(OLED_DISPLAY_SH1106), comment this line out to disable oled
#define numRGBLED 1          // number of RGB LEDs to light up
#define BRIGHTNESS 78        // Control the brightness of RGB led(s)
#define SATURATION 255       // Control the saturation of RGB led(s)
#define LED_TYPE WS2812      // type of RGB LED
#define RGBLEDPin 32         // GPIO that the WS2812 RGB LED is on
#define COLOR_ORDER GRB
#define PowerLEDPin 27 // GPIO of the Power LED D1
#define WAIT 300       // delay loop sleep time
#define buzzerPin 25   // Buzzer GPIO pin
#define userSWPin 26   // User switch GPIO pin
#define bootPin 0      // Boot switch GPIO pin
#define ROTARY_ENCODER_BUTTON_PIN 35
#define ROTARY_ENCODER_A_PIN 39
#define ROTARY_ENCODER_B_PIN 36
#define ROTARY_ENCODER_STEPS 4    // 1, 2, 4 steps per rotary step bump
#define ROTARY_ENCODER_VCC_PIN -1 // Encoder is connected direct to VCC
#define nozzle0 14
#define nozzle1 13
#define nozzle2 4
#define nozzle3 16
#define nozzle4 17
#define nozzle5 18
#define nozzle6 19
#define nozzle7 23
uint8_t nozzles[8] = {14, 13, 4, 16, 17, 18, 19, 23}; // list of nozzle GPIO firing pins
uint8_t dacValues[6] = {0, 51, 102, 153, 204, 255};   // list of 255/5 values
uint8_t dacIndex = 0;
#define powerLEDbrightness 50 // set Green Power LED to 50% brightness

#define ADC121Addr 0x51 // equiv: 0x51  Tested via i2CScanner

const uint32_t FREQ = 400000;      // i2C clock Frequencys:  100000, 400000, 1700000, 3400000
const uint8_t I2C_SDA_PIN = 21;    // ESP32 WROOM32 i2c SDA Pin
const uint8_t I2C_SCL_PIN = 22;    // ESP32 WROOM32 i2c SCL Pin
const uint8_t DISPLAY_WIDTH = 128; // OLED display pixel width
const uint8_t DISPLAY_HEIGHT = 64; // OLED display pixel height
bool ledMode = 0;
bool circleValues = false; // circle around rotary encoder or not
// bool circleValues = true;  // circle around rotary encoder or not
uint8_t menuState = 1;    // entry state of the menuState machine
uint8_t nozzleNumber = 1; // current nozzle number selected
uint8_t pulseLength = 1;  // current pulse length in miliSeconds

CRGB leds[numRGBLED];

AiEsp32RotaryEncoder rotaryEncoder = AiEsp32RotaryEncoder(ROTARY_ENCODER_A_PIN, ROTARY_ENCODER_B_PIN, ROTARY_ENCODER_BUTTON_PIN, ROTARY_ENCODER_VCC_PIN, ROTARY_ENCODER_STEPS);

// MCA1101_ADC adc(uint8_t sensor_addr);
//#define read16(reg, val) readFromRegAddr(_addr, reg, val, 2 )
//#define write8(reg, val) writeToRegAddr(_addr, reg, val, 1)

#ifdef OLED_DISPLAY_SSD1306
SSD1306Wire display(0x3c, I2C_SDA_PIN, I2C_SCL_PIN);
#endif

/**
 * Generic I2C Read function
 *
 * @param devAddr I2C Device address
 * @param reg Register address
 * @param val pointer to byte array to read into
 * @param length number of bytes to read
 *
 * @return 0 on success, other on failure
 */

int readFromRegAddr(uint8_t devAddr, uint8_t reg, void *val, size_t length)
// int readFromRegAddr(uint8_t devAddr, uint8_t reg, void *val, size_t length)
// int readFromRegAddr(uint8_t devAddr, uint8_t reg, void *val, size_t length, endian_e endianness)
{
  //  list out variables that have been passed to function:
  uint8_t *byteArray = (uint8_t *)val;
  int ret;
  int readData = 1;  // need to store data backwards, ie: LSB, MSB
  Wire.beginTransmission(devAddr); // select the ADC121 IC
  if (Wire.write(reg) < 1)         // select the conversion register: 0
  {
    Serial.println("RETURN -1");
    return -1;
  }
  if ((ret = Wire.endTransmission(false)) != 0)
  {
    Serial.println("RETURN RET");
    return ret;
  }
  if (byteArray == NULL || length == 0)
  {
    Serial.println("RETURN 0");
    return 0;
  }
  digitalWrite(33, 1); // reading data, so pulse scope Sync GPIO: 33
  Wire.requestFrom(devAddr, (uint8_t)length);
  while (Wire.available() > 0 && readData < length)
  {
    byteArray[readData] = Wire.read();
    readData--;
  }
  digitalWrite(33, 0); // finished reading data, turn off pulse scope Sync GPIO:33
  if ((ret = Wire.endTransmission(true)) != 0)
  {
    return ret;
  }
  return 0;
}

/**
 * Generic I2C Write function
 *
 * @param devAddr I2C Device address
 * @param reg Register address
 * @param val pointer to byte array to write from
 * @param length number of bytes to write
 *
 * @return 0 on success, other on failure
 */

int writeToRegAddr(uint8_t devAddr, uint8_t reg, void *val, size_t length)
// int writeToRegAddr(uint8_t devAddr, uint8_t reg, void *val, size_t length, endian_e endianness)
{
  uint8_t *byteArray = (uint8_t *)val;
  int ret;
  Wire.beginTransmission(devAddr);
  if (Wire.write(reg) < 1)
  {
    return -1;
  }
  for (int i = 0; i < length; i++)
  {
    if (Wire.write(byteArray[i]) < 1)
    {
      // if (Wire.write(byteArray[endianness == 0 ? i : length - 1 - i]) < 1) {
      return -1;
    }
  }
  if ((ret = Wire.endTransmission()) != 0)
  {
    return ret;
  }
  return 0;
}

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
  //  sound the buzzer
  ledcWrite(0, 127); // turn on buzzer
  // Serial.println("Buzzer On");
  delay(WAIT);
  // Serial.println("Buzzer Off");
  ledcWrite(0, 0); // turn buzzer off
}

void blinkRGB()
{
  // cycle the WS2812 RGB LEDS to show they are all working ok
  // Serial.println("Cycle RGB LEDs On");
  leds[0] = CRGB::Red;
  FastLED.show();
  delay(300);
  leds[0] = CRGB::Green;
  FastLED.show();
  delay(300);
  leds[0] = CRGB::Blue;
  FastLED.show();
  delay(300);
  // Serial.println("RGB LEDs Off");
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
  display.clear();
  OLED_Header();
  display.drawString(2, line * 12, textline);
  delay(300);
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
  rotaryEncoder.readEncoder_ISR();
}

// Read value from converter
float read_current()
{
  uint16_t raw = 0;
  readFromRegAddr(ADC121Addr, ADC121_CONV_REG, &raw, 2);
  return ((float)raw) / ADC121_MAX_VAL * ADC121_REF_V;
  // return ((float)raw);
}
float read_ADC()
{
  uint16_t raw = 0;
  readFromRegAddr(ADC121Addr, ADC121_CONV_REG, &raw, 2);
  return ((float)raw) / 16;
}


void setup()
{
  // put your setup code here, to run once:
  // ledcSetup(0, 4000, 8);
  // ledcAttachPin(buzzerPin, 0);
  // SoundBuzzer();
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
  pinMode(33, OUTPUT);
  digitalWrite(nozzle0, LOW);
  digitalWrite(nozzle1, LOW);
  digitalWrite(nozzle2, LOW);
  digitalWrite(nozzle3, LOW);
  digitalWrite(nozzle4, LOW);
  digitalWrite(nozzle5, LOW);
  digitalWrite(nozzle6, LOW);
  digitalWrite(nozzle7, LOW);
  digitalWrite(33, LOW);
  digitalWrite(PowerLEDPin, HIGH);
  blinkPowerLED();
  Serial.begin(115200);
  Serial.println("");
  Serial.println("Serial setup done!");
  Wire.begin(I2C_SDA_PIN, I2C_SCL_PIN, FREQ); //(SDA, SCL): uint8_t slaveAddr, int sda=-1, int scl=-1, uint32_t frequency=0
  Serial.println("Wire Begin done!");
  FastLED.addLeds<LED_TYPE, RGBLEDPin, COLOR_ORDER>(leds, numRGBLED).setCorrection(TypicalLEDStrip);
  FastLED.setBrightness(BRIGHTNESS);
  Serial.println("Fastwire finished done!");
  blinkRGB();
#if OLED_DISPLAY
  Serial.println("display init start!");
  display.init();
  Serial.println("display init finished done!");
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
  // init the ADC routines
  uint8_t buf = 0x00;
  buf = ADC121_CONFIG_CYCLE_32 & ADC121_CONFIG_CYCLE_MASK; // make sure to set Auto conversion
  Serial.println("Buffer: ");
  Serial.println(buf);
  writeToRegAddr(ADC121Addr, ADC121_CONFIG_REG, &buf, 1);
  //  ADC init finished

  Serial.println("ADC Setup completed!");
  Serial.print("Current: ");
  Serial.println(read_current());

  // SoundBuzzer();
}

void loop()
{
  // put your main code here, to run repeatedly:
  // blinkRGB();
  uint8_t charPosition = 5;
  uint8_t reValue = 0;
  uint8_t LEDwarning = BRIGHTNESS + 50;

  if (LEDwarning > 255)
  {
    LEDwarning = 255;
  }
  float dacVolts = 0;
  if ((menuState == 4) && (digitalRead(userSWPin) == LOW)) {
    // run a DAC-ADC test
    for (int dindex = 0; dindex <= 255; dindex++) {

    dacWrite(25, dindex);
    delay(1);
    dacVolts = read_ADC();
    Serial.print(dindex);
    Serial.print(", ");
    Serial.println(dacVolts);
    }
  }
  if ((menuState == 3) && (digitalRead(userSWPin) == LOW))
  {
    // fire current nozzle for set number of mSec
    blinkPowerLED();
    float curOneA = read_current();
    float curOneB = read_current();
    digitalWrite(nozzles[nozzleNumber], 1);
    delayMicroseconds(50);
    uint32_t startTime = micros();
    float curOne = read_current();
    float curTwo = read_current();
    float curThr = read_current();
    // Serial.println(read_current());
    uint32_t endTime = micros();
    delay(pulseLength);
    digitalWrite(nozzles[nozzleNumber], 0);
    delayMicroseconds(50);
    float curOneC = read_current();
    float curOneD = read_current();
    Serial.print("Current: ");
    Serial.println(curOneA);
    Serial.print("Current: ");
    Serial.println(curOneB);
    Serial.println("----");
    Serial.print("Current: ");
    Serial.println(curOne);
    Serial.print("Current: ");
    Serial.println(curTwo);
    Serial.print("Current: ");
    Serial.println(curThr);
    Serial.println("----");
    Serial.print("Current: ");
    Serial.println(curOneC);
    Serial.print("Current: ");
    Serial.println(curOneD);
    Serial.print("MicroSeconds to read sensor: ");
    Serial.println(endTime - startTime);
    // SoundBuzzer();
    Serial.print("Just Fired Nozzle: ");
    Serial.print(nozzleNumber);
    Serial.print(" [");
    Serial.print(nozzles[nozzleNumber]);
    Serial.print("] for: ");
    Serial.print(pulseLength);
    Serial.println(" mSec!");
  }

  if (rotaryEncoder.encoderChanged())
  {
    // activate rotary encoder if its changed
    // ledMode = !ledMode;
    blinkPowerLED();
    reValue = rotaryEncoder.readEncoder();
    Serial.print("New RE Value: ");
    Serial.println(reValue);
    switch (menuState)
    {
    // update current menu value with new RE value
    case 1:
      // update Nozzle number 0-7
      nozzleNumber = reValue;
      if (nozzleNumber > 7)
      {
        nozzleNumber = 7;
      }
      else if (nozzleNumber < 0)
      {
        nozzleNumber = 0;
      }
      break;
    case 2:
      // update pulse Length value
      pulseLength = reValue;
      if (pulseLength > 20)
      {
        pulseLength = 20;
      }
      else if (pulseLength < 1)
      {
        pulseLength = 1;
      }
      break;
    case 3:
      // now set to fire current nozzle mode. Wait for User button press!
      break;
    case 4:
      // now set  new DAC value
      dacIndex = reValue;
      if (dacIndex > 5)
      {
        dacIndex = 5;
      }
      else if (dacIndex < 0)
      {
        dacIndex = 0;
      }
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
      break;
    case 2:
      menuState = 3;
      leds[0] = CHSV(0, 255, LEDwarning); // set to RED
      FastLED.show();
      break;
    case 3:
      menuState = 4;
      leds[0] = CHSV(96, 255, BRIGHTNESS); // set to Green
      FastLED.show();
      break;
    case 4:
      menuState = 1;
      leds[0] = CHSV(26, 255, BRIGHTNESS); // set to ???
      FastLED.show();
      break;
    }
    // SoundBuzzer();
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
    display.drawString(1, 4 * 12, "DAC Output: ");
    display.drawString(16 * charPosition, 4 * 12, String(dacIndex));

    break;
  case 2:
    display.drawString(1, 1 * 12, "Nozzle No: ");
    display.drawString(13 * charPosition, 1 * 12, String(nozzleNumber));
    display.drawString(10, 2 * 12, "Pulse Length: ");
    display.drawString(16 * charPosition, 2 * 12, String(pulseLength));
    display.drawString(1, 3 * 12, "Ready to Fire!");
    display.drawString(1, 4 * 12, "DAC Output: ");
    display.drawString(16 * charPosition, 4 * 12, String(dacIndex));
    break;
  case 3:
    display.drawString(1, 1 * 12, "Nozzle No: ");
    display.drawString(13 * charPosition, 1 * 12, String(nozzleNumber));
    display.drawString(1, 2 * 12, "Pulse Length: ");
    display.drawString(16 * charPosition, 2 * 12, String(pulseLength));
    display.drawString(10, 3 * 12, "Ready to Fire!");
    display.drawString(1, 4 * 12, "DAC Output: ");
    display.drawString(16 * charPosition, 4 * 12, String(dacIndex));
    break;
  case 4:
    display.drawString(1, 1 * 12, "Nozzle No: ");
    display.drawString(13 * charPosition, 1 * 12, String(nozzleNumber));
    display.drawString(1, 2 * 12, "Pulse Length: ");
    display.drawString(16 * charPosition, 2 * 12, String(pulseLength));
    display.drawString(1, 3 * 12, "Ready to Fire!");
    display.drawString(10, 4 * 12, "DAC Output: ");
    display.drawString(16 * charPosition, 4 * 12, String(dacIndex));
    dacWrite(25, dacValues[dacIndex]);
    break;
  default:
    display.drawString(0, 55, "Menu Error!");
    break;
  }
  display.display();

  delay(100);
}
