// ----------------------------------------------
#include <Adafruit_ILI9341.h>
#include <Adafruit_STMPE610.h>
#include "arrow_next.h"


// ----------------------------------------------
// For the Adafruit shield, these are the default.
#define STMPE_CS 8
#define TFT_DC 9
#define TFT_CS 10
Adafruit_STMPE610 ts = Adafruit_STMPE610(STMPE_CS);
Adafruit_ILI9341 tft = Adafruit_ILI9341(TFT_CS, TFT_DC);

// ----------------------------------------------
#define SCREEN_W 320
#define SCREEN_H 240
#define ARROWNEXT_X SCREEN_W - ARROWNEXT_W - 10
#define ARROWNEXT_Y (SCREEN_H - ARROWNEXT_H)/2
#define TS_MINX 150
#define TS_MINY 130
#define TS_MAXX 3800
#define TS_MAXY 4000

// ----------------------------------------------
TS_Point pTouched;
int xTouched = 0, yTouched = 0;
bool bButtonNextHit = false, bIconHit = false;

// ----------------------------------------------
uint16_t page = 0; // 0 = selection des modes, 1 = satisfaction
uint16_t mode = 0;
uint16_t nbModes = 4;

// ----------------------------------------------
void setup()
{
  Serial.begin(9600);
  Serial.println("Oni project");

  tft.begin();
  if (!ts.begin()) {
    Serial.println("Unable to start touchscreen.");
  }
  else {
    Serial.println("Touchscreen started.");
  }
  tft.setRotation(1); // origin = left,top landscape (USB left upper)

  drawModeFrame();
}

// ----------------------------------------------
void loop()
{
  if (ts.touched())
  {
    // positionne les variables xTouched, yTouched
    retrieveXYTouched();

    // Page 0 
    if (page == 0)
    {
      // Test button next
      if (bButtonNextHit == false)
      {
        bButtonNextHit = isButtonNextHit(xTouched, yTouched);
      }
    }

    // Page 1
    else if (page == 1)
    {

    }





  }
  else
  {
    if (bButtonNextHit)
    {
      Serial.println("button next hit");
      mode = (mode + 1) % nbModes;
      Serial.println(mode);
      bButtonNextHit = false;
      drawModeFrame();
      delay(500);
    }

    if (bIconHit)
    {
      bIconHit = false;
      delay(500);
    }

  }
}

// ----------------------------------------------
String modeToString()
{
  if (mode == 0) return "MODE 0";
  else if (mode == 1) return "MODE 1";
  else if (mode == 2) return "MODE 2";
  else if (mode == 3) return "MODE 3";

  return "???";
}

// ----------------------------------------------
void drawModeFrame()
{
  tft.fillScreen(ILI9341_BLACK);
  drawArrowNext(ARROWNEXT_X, ARROWNEXT_Y);
  tft.setCursor(10 , ARROWNEXT_Y);
  tft.setTextColor(ILI9341_WHITE);
  tft.setTextSize(2);
  tft.println(modeToString());
}

// ----------------------------------------------
void retrieveXYTouched()
{
  pTouched = ts.getPoint();
  pTouched.x = map(pTouched.x, TS_MINY, TS_MAXY, 0, tft.height());
  pTouched.y = map(pTouched.y, TS_MINX, TS_MAXX, 0, tft.width());
  yTouched = tft.height() - pTouched.x;
  xTouched = pTouched.y;
}

// ----------------------------------------------
void drawArrowNext(uint16_t x, uint16_t y)
{
  tft.drawRGBBitmap(x, y, arrowNextBitmap, ARROWNEXT_W, ARROWNEXT_H);
}

// ----------------------------------------------
bool isRectHit(int xTouch, int yTouch, int x, int y, int w, int h)
{
  if (xTouch >= x && xTouch <= (x + w))
  {
    if (yTouch >= y && yTouch <= (y + h))
    {
      return true;
    }
  }
  return false;
}

// ----------------------------------------------
bool isButtonNextHit(int x, int y)
{
  return isRectHit(x, y, ARROWNEXT_X, ARROWNEXT_Y, ARROWNEXT_W, ARROWNEXT_H);
}


