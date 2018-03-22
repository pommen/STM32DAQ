/*
 * Test OLED display 1306 pixel size 128x64, 0.96 inch
 * Interface I2C
 * Important! Define SSD1306_128_64 in Adafruit_SSD1306_STM32.h
 *
 * Wiring: SCLK  .. B6
 *         SDA   .. B7
 *
 *
 */
// Simple I2C test for ebay 128x64 oled.
#include <Arduino.h>
 #include <Wire.h>
 #include "SSD1306Ascii.h"
 #include "SSD1306AsciiWire.h"
 #include <Adafruit_INA219.h>
 #include <SPI.h>
  #include "SdFat.h"
  #include <Bounce2.h>

Adafruit_INA219 ina1(0x40);
Adafruit_INA219 ina2(0x41);
Adafruit_INA219 ina3(0x44);
SdFat SD;
File dataFile;
Bounce debouncer = Bounce();
 #define I2C_ADDRESS 0x3C
SSD1306AsciiWire oled;




//globals:

String fileName="log.csv";

float data[] = {0.00,0.00,0.00,0.00,0.00,0.00};
long trigTime =0;
long updateTime =0;
int tiggerBounced =0;

//Protos:

void get_current();
void logData();
void header();

//Pins:
const int SD_CS_PIN = PA4;
const int trig = PA3;

//------------------------------------------------------------------------------
void setup() {
        pinMode(SD_CS_PIN, OUTPUT);

        pinMode(trig, INPUT_PULLDOWN);

        Wire.begin();
        Wire.setClock(400000);
        oled.begin(&Adafruit128x32, I2C_ADDRESS);
        oled.setFont(Adafruit5x7);
        oled.println(F("  HI!!"));

        Serial.begin(9600);
        // Initialize at the highest speed supported by the board that is
        // not over 50 MHz. Try a lower speed if SPI errors occur.

        // initialize the SD card at SPI_HALF_SPEED to avoid bus errors with
        // breadboards.  use SPI_FULL_SPEED for better performance.




        if (!SD.begin(SD_CS_PIN, SPI_HALF_SPEED)) {
                oled.clear();
                oled.set2X();
                oled.println(F("  FAIL!!"));
                oled.set1X();
                oled.println(F("Card failed")); oled.println(F("or not present"));
                delay(100000);         // don't do anything more:
                return;
        }
        // Serial.print(F("card initialized."));
        oled.println(F("card initialized."));

        int cardSize = SD.card()->cardSize();
        if (cardSize == 0) {
                oled.println("cardSize failed");
                return;
        }
        ina1.begin();
        ina2.begin();
        ina3.begin();
        // To use a slightly lower 32V, 1A range (higher precision on amps):
        //ina219.setCalibration_32V_1A();
        // Or to use a lower 16V, 400mA range (higher precision on volts and amps):
        ina1.setCalibration_16V_400mA();
        ina2.setCalibration_16V_400mA();
        ina3.setCalibration_16V_400mA();


        oled.clear();
        debouncer.attach(trig);
        debouncer.interval(10);   // interval in ms
}
//------------------------------------------------------------------------------
void loop() {
        debouncer.update();
        tiggerBounced = debouncer.read();
        if (millis() - updateTime > 500) {

                get_current();
                oled.clear();
                oled.home();
                oled.println("Waiting for Trigg ");
                oled.print("U: ");

                oled.print(data[0]);
                oled.print("   I: ");

                oled.println(data[1]);
                oled.print("U: ");

                oled.print(data[2]);
                oled.print("   I: ");

                oled.println(data[3]);
                oled.print("U: ");

                oled.print(data[4]);
                oled.print("   I: ");

                oled.println(data[5]);
                updateTime = millis();
        }

        if (tiggerBounced== HIGH) {
                header();
                oled.clear();
                oled.home();
                oled.set2X();
                oled.print("Trigged!");
                oled.set1X();
        }


        while (digitalRead(trig) == HIGH) {
                get_current();
                logData();
        }

}

void get_current(){
        data[0]= ina1.getBusVoltage_V();
        data[1] = ina1.getCurrent_mA();
        data[2] = ina2.getBusVoltage_V();
        data[3] = ina2.getCurrent_mA();
        data[4] = ina3.getBusVoltage_V();
        data[5] = ina3.getCurrent_mA();

}



void header(/* arguments */) {
        // open the file. note that only one file can be open at a time,
        // so you have to close this one before opening another.
        File dataFile = SD.open(fileName, FILE_WRITE);

        // if the file is available, write to it:
        if (dataFile) {
                String head ="U1;I1;U2;I2;U3;I3;MS;";

                dataFile.print(head);
                dataFile.println(millis());
                dataFile.close();
        }
}
void logData() {

        // open the file. note that only one file can be open at a time,
        // so you have to close this one before opening another.
        File dataFile = SD.open(fileName, FILE_WRITE);

        // if the file is available, write to it:
        if (dataFile) {
                for (size_t i = 0; i <6; i++) {
                        dataFile.print(data[i]);
                        dataFile.print(";");

                }
                dataFile.println(millis());
                dataFile.close();
        }



        // if the file isn't open, pop up an error:
        else {
                oled.clear();
                oled.set2X();
                oled.println(F("  FAIL!!"));
                oled.set1X();
                oled.println(F("error opening")); oled.println(fileName);
                Serial.print(F("in Log values: error opening")); // Serial.print(fileName);
                //  fault();
        }

}
