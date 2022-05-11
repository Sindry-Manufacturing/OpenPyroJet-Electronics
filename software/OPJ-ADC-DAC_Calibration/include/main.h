/**
 * @file MCA1101_ADC.cpp
 * @author Sam Olds (sam@ardusat.com) + Parkview
 * @date 1-8-2016 + 2022-04-26
 * @brief ADC121xxxx 12 bit I2C ADC for the MCA1101 current sensor
 *
 * http://www.ti.com/product/adc121c027
 * Datasheet: http://www.ti.com/lit/gpn/adc121c027
 * 
 * Based on: https://github.com/ArduSat/ArdusatSDK/blob/master/utility/ML8511_ADC.h
 */

#ifndef ADC121_H_
#define ADC121_H_

//#include "Wire.h"

// for ref, see ADC121C027 datasheet
// pg. 18 (adc121c021.pdf)

#define ADC121_CONV_REG     0x00
#define ADC121_ALRT_REG     0x01
#define ADC121_CONFIG_REG   0x02
#define ADC121_LOWLIM_REG   0x03
#define ADC121_HIGHLIM_REG  0x04
#define ADC121_HYSTER_REG   0x05
#define ADC121_LOWCONV_REG  0x06
#define ADC121_HIGHCONV_REG 0x07

#define ADC121_CONFIG_ALERT_PIN_ACTIVE_HIGH 0x01
#define ADC121_CONFIG_ALERT_PIN_EN          0x04
#define ADC121_CONFIG_ALERG_FLAG_EN         0x08

#define ADC121_CONFIG_CYCLE_MASK   0xE0
#define ADC121_CONFIG_CYCLE_NOAUTO 0x00
#define ADC121_CONFIG_CYCLE_32     0x20
#define ADC121_CONFIG_CYCLE_64     0x40
#define ADC121_CONFIG_CYCLE_128    0x60
#define ADC121_CONFIG_CYCLE_256    0x80
#define ADC121_CONFIG_CYCLE_512    0xA0
#define ADC121_CONFIG_CYCLE_1024   0xC0
#define ADC121_CONFIG_CYCLE_2048   0xE0

#define ADC121_MAX_VAL  0x0FFF  // 0xFFF = 4095D
#define ADC121_REF_V    3.421

#endif