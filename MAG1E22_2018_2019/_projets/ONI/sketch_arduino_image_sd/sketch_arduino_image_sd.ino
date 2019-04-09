#include <SPI.h>
#include <SD.h>
#include <Adafruit_GFX.h>         // Core graphics library<font></font>
#include <Adafruit_ImageReader.h> // Image-reading functions<font></font>
#include <Adafruit_ILI9341.h>     // Hardware-specific library

#define SD_CS   4 // SD card select pin<font></font>
#define TFT_CS 10 // TFT select pin<font></font>
#define TFT_DC  9 // TFT display/command pin<font></font>
Adafruit_ILI9341 tft = Adafruit_ILI9341(TFT_CS, TFT_DC);

Adafruit_ImageReader reader; // Class w/image-reading functions

void setup()
{
 Serial.begin(9600);
 tft.begin();
 if (!SD.begin(SD_CS)) {
   Serial.println(F("failed!"));
   for (;;); // Loop here forever
 }
 Serial.println(F("OK!"));

// tft.fillScreen(ILI9341_BLUE);
 ImageReturnCode stat;
 stat = reader.drawBMP("/cloud.bmp", tft, 0, 0); 
 reader.printStatus(stat);
 Serial.println("here");
}

void loop() {
 // put your main code here, to run repeatedly:

}
