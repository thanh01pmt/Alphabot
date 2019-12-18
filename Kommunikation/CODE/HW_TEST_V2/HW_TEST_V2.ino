#include <Adafruit_NeoPixel.h>
#ifdef __AVR__
 #include <avr/power.h>
#endif
#include <SparkFun_TB6612.h>

#define WS2812b  5
#define NUMPIXELS 4
#define AIN1 27
#define BIN1 12
#define AIN2 33
#define BIN2 13
#define PWMA 32
#define PWMB 15
#define STBY 14
#define IR_L_IN 22
#define IR_L_OUT 38
#define IR_R_IN 18
#define IR_R_OUT 37
#define END_R 9
#define END_L 10
#define TEST_LED 25

bool test_led_bup = false;
char r = 0;
char g = 0;
char b = 128;
const int offsetA = -1;
const int offsetB = 1;
int zahl = 0;

Motor motorR = Motor(AIN1, AIN2, PWMA, offsetA, STBY, 0);
Motor motorL = Motor(BIN1, BIN2, PWMB, offsetB, STBY, 1);

// LED
Adafruit_NeoPixel pixels(NUMPIXELS, WS2812b, NEO_GRB + NEO_KHZ800);
void setup() {

  Serial.begin(9600);
  pinMode(TEST_LED, OUTPUT);
  pinMode(IR_L_OUT, INPUT);
  pinMode(IR_R_OUT, INPUT);
  pinMode(END_R, INPUT);
  pinMode(END_L, INPUT);
  pinMode(IR_L_IN, OUTPUT);
  pinMode(IR_R_IN, OUTPUT);
  
   for(int i=0; i<NUMPIXELS; i++) { // For each pixel...
    pixels.setPixelColor(i, pixels.Color(r, g, b));
    pixels.show();   // Send the updated pixel colors to the hardware.
  }

  digitalWrite(IR_R_IN, HIGH);
  digitalWrite(IR_L_IN, HIGH);
  // LED
  pixels.begin(); // INITIALIZE NeoPixel strip object (REQUIRED)

   for(int i=0; i<NUMPIXELS; i++) { // For each pixel...
    pixels.setPixelColor(i, pixels.Color(255, 255, 255));
    pixels.show();   // Send the updated pixel colors to the hardware.
    delay(500);
  }
  
}

void loop() {
  
  motorL.drive(255,0);
  motorR.drive(255,0);

  for(r = 0; r < 128; r++){
    b--;
    for(int i = 0; i < 4; i++){
      pixels.setPixelColor(i, pixels.Color(r, g, b));
      pixels.show();   // Send the updated pixel colors to the hardware.
    }
    delay(10);
    
  }
  for(g = 0; g < 128; g++){
    r--;
    for(int i = 0; i < 4; i++){
      pixels.setPixelColor(i, pixels.Color(r, g, b));
      pixels.show();   // Send the updated pixel colors to the hardware.
    }
    delay(10);
  }
  for(b = 0; b < 128; b++){
    g--;
    for(int i = 0; i < 4; i++){
      pixels.setPixelColor(i, pixels.Color(r, g, b));
      pixels.show();   // Send the updated pixel colors to the hardware.
    }
    delay(10);
  }


  if(test_led_bup == false){
    test_led_bup = true;
    digitalWrite(TEST_LED, HIGH);
  }
  else{
    test_led_bup = false;
    digitalWrite(TEST_LED, LOW);
  }
  
  delay(10);
}
