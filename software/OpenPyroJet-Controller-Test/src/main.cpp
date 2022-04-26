/* #####################################
*
* an example Test program to select pulse length and nozzle number
* then fire the nozzle
*
* Parkview 2022-04-24
* MIT License - Open Source Software
*
*
List of todo's:
  * TODO: change Rotary Encoder over to proper number tracking!
  * TODO: setup power LED with PWM so we can adjust brightness
  * DONE: get menu working correctly on screen
  * DONE: get nozzles firing with set paramemters
*/

#include <Arduino.h>
#include <Wire.h>
#include "SSD1306Wire.h"
#include "FastLED.h"
#include "AiEsp32RotaryEncoder.h"

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
int nozzles[8] = {14,13,4,16,17,18,19,23};
#define powerLEDbrightness 50 // set Green Power LED to 50% brightness

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

#ifdef OLED_DISPLAY_SSD1306
SSD1306Wire display(0x3c, I2C_SDA_PIN, I2C_SCL_PIN);
#endif

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
  Serial.println("Buzzer On");
  delay(WAIT);
  Serial.println("Buzzer Off");
  ledcWrite(0, 0); // turn buzzer off
}

void blinkRGB()
{
  // cycle the WS2812 RGB LEDS to show they are all working ok
  //Serial.println("Cycle RGB LEDs On");
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
  // update menu with new data: line 1=
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

void setup()
{
  // put your setup code here, to run once:
  ledcSetup(0, 4000, 8);
  ledcAttachPin(buzzerPin, 0);
  SoundBuzzer();
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
  Serial.println("Serial setup done!");
  Wire.begin(I2C_SDA_PIN, I2C_SCL_PIN); //(SDA, SCL)
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
  leds[0] = CHSV(96, 255, BRIGHTNESS);               // set to Green
  FastLED.show();
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
  if ((menuState == 3) && (digitalRead(userSWPin) == LOW))
  {
    // fire current nozzle for set number of mSec
    blinkPowerLED();
    digitalWrite(nozzles[nozzleNumber], 1);
    delay(pulseLength);
    digitalWrite(nozzles[nozzleNumber], 0);
    SoundBuzzer();
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
      menuState = 1;
      leds[0] = CHSV(96, 255, BRIGHTNESS); // set to Green
      FastLED.show();
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

  /*
  if (digitalRead(bootPin) == LOW)
  {
    // testing out the Boot button switch
    Serial.println("Boot Switch pressed!");
    ledMode = !ledMode;
    digitalWrite(PowerLEDPin, ledMode);
    SoundBuzzer();
  }
  if (digitalRead(userSWPin) == LOW)
  {
    // testing out the User button switch
    Serial.println("User Button pressed");
    ledMode = !ledMode;
    digitalWrite(PowerLEDPin, ledMode);
    SoundBuzzer();
  }
  */
  delay(100);
}