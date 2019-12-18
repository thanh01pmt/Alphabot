/*
 * Includes
 */
 
#include "WiFi.h"
#include "WiFiAP.h"
#include "ESPAsyncWebServer.h"
#include "SPIFFS.h"
#include <ESPmDNS.h>
#include <SparkFun_TB6612.h>
#include <Adafruit_NeoPixel.h>
#ifdef __AVR__
 #include <avr/power.h>
#endif

/*
 * Defines
 */
 
// Motor
#define AIN1 27
#define BIN1 12
#define AIN2 33
#define BIN2 13
#define PWMA 32
#define PWMB 15
#define STBY 14
// LED
#define WS2812b  5
#define NUMPIXELS 4
// Auto
#define AUTO 0

/*
 * Variabeln
 */

// Wifi
const char* ssid = "Alphabot" + AUTO;
const char* password = "passwort";
// Joystick
String joystickdata;
String xwert, ywert;
int x = 0, y = 0;
int position;
const int offsetA = 1;
const int offsetB = -1;
// Farben
int colors[7][3] = {{128, 128, 128}, {128, 0, 0}, {0, 128, 0}, {0, 0, 128}, {128, 128, 0}, {128, 0, 128}, {0, 128, 128}};

/*
 * Initialisierung
 */

// LED
Adafruit_NeoPixel pixels(NUMPIXELS, WS2812b, NEO_GRB + NEO_KHZ800);
// Async Websocket Server
AsyncWebServer server(80);
AsyncWebSocket ws("/ws");
AsyncWebSocketClient * globalClient = NULL;
// Motor
Motor motorR = Motor(AIN1, AIN2, PWMA, offsetA, STBY, 0);
Motor motorL = Motor(BIN1, BIN2, PWMB, offsetB, STBY, 1);

/*
 * Funktionen
 */

// Websocket
void onWsEvent(AsyncWebSocket * server, AsyncWebSocketClient * client, AwsEventType type, void * arg, uint8_t *data, size_t len){
 
  if(type == WS_EVT_CONNECT){
 
    Serial.println("Websocket client connection received");
    digitalWrite(25, HIGH);
    client->text("QA" + (String)AUTO);
 
  } else if(type == WS_EVT_DISCONNECT){
    Serial.println("Client disconnected");
    Serial.println("-----------------------");
    digitalWrite(25, LOW);
 
  } else if(type == WS_EVT_DATA){
 
    Serial.print("Data received: ");
    joystickdata = "";
 
    for(int i=0; i < len; i++) {
          joystickdata += (char) data[i];
    }
 
    Serial.println(joystickdata);

    if(joystickdata.substring(0, 1) == "X"){
      convertStringtoInt(joystickdata);
    }
  }
}
// Motor
void motor(int x, int y){
  //Variabeln initialisieren und deklarieren
  int hypotenuse, pace_max, motor_links, motor_rechts, pixel_max = 120;

  //Maximalwerte für x und y bestimmen
  if (x > pixel_max){
    x = pixel_max;
  }
  else if (x < -pixel_max){
    x = -pixel_max;
  }
  if (y > pixel_max){
    y = pixel_max;
  }
  else if (y < -pixel_max){
    y = -pixel_max;
  }
  
  //Joystickmaximum bestimmen
  hypotenuse = sqrt(pow(x, 2) + pow(y, 2)); 
  
  //Die durch das Quadrieren positive Hypotenuse wird wieder negativ gemacht
  if (y < 0){
    hypotenuse *= -1;
  }
  
  //Geschwindigkeitsmaximum bestimmen
  if (hypotenuse > pixel_max){
    hypotenuse = pixel_max;
  }
  else if (hypotenuse < -pixel_max){
    hypotenuse = -pixel_max;  
  }
  
  //Effektives Motorgeschwindigkeitsmaximum bestimmen
  // pixel_max = hypotenuse
  // 255 = pace_max
  pace_max = 255 * hypotenuse / pixel_max; 
  
  //Umwandlung
  if (x >= 0){                                  // x positiv
    motor_links = pace_max;                     // motor_links fährt mit maximaler Geschwindigkeit
    if (x <= pixel_max/2){                               // Der Joystick ist unter der Hälfte
      motor_rechts = pace_max * x / (pixel_max/2);         // Die Geschwindigkeit des verlangsamten Motors wird berechnet --> effektive Geschwindigkeit
      // x = pixel_max/2
      // motor_rechts = pace_max
      motor_rechts = pace_max - motor_rechts;   // Die Differenz zum Geschwindigkeitsmaximum 
    }
    else{                                       // Der Joystick ist über der Hälfte
      x -= pixel_max/2;                                  // x wird auf eine 0-75 Skala gebrochen
      motor_rechts = -pace_max * x / (pixel_max/2);        // Die Geschwindigkeit des rückwärts fahrenden Motors wird berechnet
    }
  }
  else if(x < 0){                               // x negativ
    motor_rechts = pace_max;                    // motor_rechts fährt mit maximaler Geschwindigkeit
    if (x >= -pixel_max/2){                              // Der Joystick ist unter der Hälfte
      motor_links = pace_max * x / -(pixel_max/2);         // Die Geschwindigkeit des verlangsamten Motors wird berechnet
      motor_links = pace_max - motor_links;     // Die Differenz zum Geschwindigkeitsmaximum --> effektive Geschwindigkeit
    }
    else{                                       // Der Joystick ist über der Hälfte
      x += pixel_max/2;                                  // x wird auf eine 0-75 Skala gebrochen
      motor_links = pace_max * x / (pixel_max/2);          // Die Geschwindigkeit des rückwärts fahrenden Motors wird berechnet
    }
  }  
  motorL.drive(motor_links,0);
  motorR.drive(motor_rechts,0);
}
// String zu int (Joystick)
void convertStringtoInt(String eingabe) {
  position = eingabe.indexOf("X");
  eingabe.remove(position, 2);
  position = eingabe.indexOf("Y");
  eingabe.remove(position, 2);
  xwert = eingabe;
  ywert = eingabe;
  xwert.remove(position);
  x = xwert.toInt();
  ywert.remove(0, position);
  y = ywert.toInt();
  Serial.print("X-Wert: ");
  Serial.println(x);
  Serial.print("Y-Wert: ");
  Serial.println(y);
}

/*
 * SETUP
 */
 
void setup(){
  // Serial
  Serial.begin(115200);

  // SPIFFS
  if(!SPIFFS.begin(true)){
    Serial.println("An Error has occurred while mounting SPIFFS");
    return;
  }
  
  // Wifi
  WiFi.softAP(ssid, password);
  IPAddress myIP = WiFi.softAPIP();
  Serial.print("IP: ");
  Serial.println(myIP);
  Serial.println("");
  
  // MDNS
  if (!MDNS.begin("auto")) {
        Serial.println("Error setting up MDNS responder!");
        while(1) {
            delay(1000);
        }
    }
  Serial.println("mDNS responder started");
  
  // LED
  pixels.begin(); // INITIALIZE NeoPixel strip object (REQUIRED)
  
  // Webserver Upload
  server.on("/", HTTP_GET, [](AsyncWebServerRequest *request){
    request->send(SPIFFS, "/index.html", "text/html");
  });
  
  // Route to load style.css file
  server.on("/style.css", HTTP_GET, [](AsyncWebServerRequest *request){
    request->send(SPIFFS, "/style.css", "text/css");
  });

  // Route to load virtualjoystick.js file
  server.on("/virtualjoystick.js", HTTP_GET, [](AsyncWebServerRequest *request){
    request->send(SPIFFS, "/virtualjoystick.js", "text/javascript");
  });

  
  // Websocket & Webserver
  ws.onEvent(onWsEvent);
  server.addHandler(&ws);
  server.begin();
  MDNS.addService("http", "tcp", 80);
  
  // PinMode
  pinMode(25, OUTPUT);

  // Reset Motors
  motor(0, 0);
}


 
void loop(){
  motor(x, y);
  
  
  delay(20);
}
