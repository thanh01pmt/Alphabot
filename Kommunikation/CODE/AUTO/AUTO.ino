/*
 * Includes
 */
 
#include "WiFi.h" 
#include "ESPAsyncWebServer.h"
#include <ESPmDNS.h>
#include <SparkFun_TB6612.h>
#include <Adafruit_NeoPixel.h>
#ifdef __AVR__
 #include <avr/power.h>
#endif
#include "AsyncUDP.h"

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

/*
 * Variabeln
 */

// Wifi
const char* ssid = "EL-Parcour";
const char* password = "passwort";
// Joystick
String joystickdata;
String xwert, ywert;
int x = 0, y = 0;
int position;
const int offsetA = 1;
const int offsetB = -1;
// Auto
int auto_nummer = 11;
bool freigabe = false;
int counter_freigabe = 0;

/*
 * Initialisierung
 */

// LED
Adafruit_NeoPixel pixels(NUMPIXELS, WS2812b, NEO_GRB + NEO_KHZ800);
// Async Websocket Server
AsyncWebServer server(80);
AsyncWebSocket ws("/ws");
AsyncWebSocketClient * globalClient = NULL;
// Async UDP
AsyncUDP udp;
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
    client->text("QA" + (String)auto_nummer);
 
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
// Farbe
void farbe(){
  switch(auto_nummer){
    case 0:
       for(int i=0; i<NUMPIXELS; i++) { // For each pixel...
        pixels.setPixelColor(i, pixels.Color(255, 255, 255));
        pixels.show();   // Send the updated pixel colors to the hardware.
      }
      break;
    case 1:
       for(int i=0; i<NUMPIXELS; i++) { // For each pixel...
          pixels.setPixelColor(i, pixels.Color(255, 0, 0));
          pixels.show();   // Send the updated pixel colors to the hardware.
        }
        break;
    case 2:
       for(int i=0; i<NUMPIXELS; i++) { // For each pixel...
        pixels.setPixelColor(i, pixels.Color(0, 255, 0));
        pixels.show();   // Send the updated pixel colors to the hardware.
      }
      break;
    case 3:
       for(int i=0; i<NUMPIXELS; i++) { // For each pixel...
        pixels.setPixelColor(i, pixels.Color(0, 0, 255));
        pixels.show();   // Send the updated pixel colors to the hardware.
      }
      break;
    case 4:
       for(int i=0; i<NUMPIXELS; i++) { // For each pixel...
        pixels.setPixelColor(i, pixels.Color(255, 255, 0));
        pixels.show();   // Send the updated pixel colors to the hardware.
      }
      break;
    case 5:
       for(int i=0; i<NUMPIXELS; i++) { // For each pixel...
        pixels.setPixelColor(i, pixels.Color(255, 0, 255));
        pixels.show();   // Send the updated pixel colors to the hardware.
      }
      break;
    case 6:
       for(int i=0; i<NUMPIXELS; i++) { // For each pixel...
        pixels.setPixelColor(i, pixels.Color(0, 255, 255));
        pixels.show();   // Send the updated pixel colors to the hardware.
      }
      break;
    case 7:
       for(int i=0; i<NUMPIXELS; i++) { // For each pixel...
        pixels.setPixelColor(i, pixels.Color(255, 128, 128));
        pixels.show();   // Send the updated pixel colors to the hardware.
      }
      break;
    case 8:
       for(int i=0; i<NUMPIXELS; i++) { // For each pixel...
        pixels.setPixelColor(i, pixels.Color(128, 255, 128));
        pixels.show();   // Send the updated pixel colors to the hardware.
      }
      break;
    case 9:
       for(int i=0; i<NUMPIXELS; i++) { // For each pixel...
        pixels.setPixelColor(i, pixels.Color(128, 128, 255));
        pixels.show();   // Send the updated pixel colors to the hardware.
      }
      break;
  }

}
// UDP konvertieren
/*
 *       if (udp.connect(ipaddress, 1234)) {
        udp.print("HI");
        udp.close();
      }
 */
void UDPconvert(String cmd, IPAddress ipaddress) {
  if (cmd.substring(0, 1) == "S") { // Sperren
    if (cmd.substring(1, 2).toInt() == auto_nummer) { // Dieses Auto
      freigabe = false;
    }  
  }
  else if(cmd.substring(0, 1) == "F"){  // Freigabe
    if (cmd.substring(1, 2).toInt() == auto_nummer) { // Dieses Auto
      freigabe = true;
    }
    else if(cmd.substring(1, 2) == "A"){
      freigabe = true;  
    }
  }
  else if(cmd.substring(0, 1) == "W"){  // Show
    if (cmd.substring(1, 2) == "0") { // Show 0
      for(int i=0; i<NUMPIXELS; i++) { // For each pixel...
        pixels.setPixelColor(i, pixels.Color(255, 0, 255));
        pixels.show();   // Send the updated pixel colors to the hardware.
      }
    }
    else if (cmd.substring(1, 2) == "1") { // Show 1
      for(int i=0; i<NUMPIXELS; i++) { // For each pixel...
        pixels.setPixelColor(i, pixels.Color(0, 255, 255));
        pixels.show();   // Send the updated pixel colors to the hardware.
      }
    }
    else if (cmd.substring(1, 2) == "2") { // Show 2
      for(int i=0; i<NUMPIXELS; i++) { // For each pixel...
        pixels.setPixelColor(i, pixels.Color(255, 255, 0));
        pixels.show();   // Send the updated pixel colors to the hardware.
      }
    }
  }
  else if(cmd.substring(0,1) == "A"){ // Autonummer zuweisung
    auto_nummer = cmd.substring(1,2).toInt();
    Serial.println(auto_nummer);
  }
  else if(cmd.substring(0,1) == "Q"){ // Frage vom Master
    if(cmd.substring(1,2) == "A"){ // Auto
      if(cmd.substring(2,3) == "A" && auto_nummer != 11){ // Autonummer
        if (udp.connect(ipaddress, 1234)) {
          udp.print("QAA" + (String)auto_nummer);
          udp.close();
        }
      }
    }
  }
  else if(cmd.substring(0,1) == "Z"){ // Zieldurchfahrt
    
  }
  else if(cmd.substring(0,1) == "M"){ // Modus
    if(cmd.substring(1,2) == "L"){  // Linienfolger
      
    }
    else if(cmd.substring(1,2) == "R"){ // Rennen
      
    }
    else if(cmd.substring(1,2) == "M"){ // Maze --> Rätselebene
      
    }
    else if(cmd.substring(1,2) == "U"){ // Ultraschall
      
    }
  }
} 

/*
 * SETUP
 */
 
void setup(){
  // Serial
  Serial.begin(115200);
  // Wifi
  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid, password);
 
  while (WiFi.status() != WL_CONNECTED) {
    delay(1000);
    Serial.println("Connecting to WiFi..");
  }
  Serial.println(WiFi.localIP());
  // MDNS
  if (!MDNS.begin("auto5")) {
        Serial.println("Error setting up MDNS responder!");
        while(1) {
            delay(1000);
        }
    }
  Serial.println("mDNS responder started");
  // LED
  pixels.begin(); // INITIALIZE NeoPixel strip object (REQUIRED)
  // Websocket
  ws.onEvent(onWsEvent);
  server.addHandler(&ws);
  server.begin();
  // PinMode
  pinMode(25, OUTPUT);
  // UDP
  if(udp.listenMulticast(IPAddress(239,1,2,3), 1234)) {
      Serial.print("UDP Listening on IP: ");
      Serial.println(WiFi.localIP());
      // Empfangen
      udp.onPacket([](AsyncUDPPacket packet) {
          Serial.print("UDP Packet Type: ");
          Serial.print(packet.isBroadcast()?"Broadcast":packet.isMulticast()?"Multicast":"Unicast");
          Serial.print(", From: ");
          Serial.print(packet.remoteIP());
          Serial.print(":");
          Serial.print(packet.remotePort());
          Serial.print(", To: ");
          Serial.print(packet.localIP());
          Serial.print(":");
          Serial.print(packet.localPort());
          Serial.print(", Length: ");
          Serial.print(packet.length());
          Serial.print(", Data: ");
          Serial.write(packet.data(), packet.length());
          Serial.println();
          String udpinput = "";
          for (int i = 0; i < packet.length(); i++) {
            udpinput += (char)packet.data()[i];
          }
          UDPconvert(udpinput, packet.remoteIP());
      });
  }
  // Nummerzuweisung
  udp.print("QA  ");
}


 
void loop(){
  if(freigabe == true){
    motor(x,y);
    farbe();
  }
  else if(freigabe == false){
    motor(0,0);
    if(counter_freigabe <= 25){
      farbe();
    }
    else if(counter_freigabe == 50){
      counter_freigabe = 0;
    }
    else{
      for(int i=0; i<NUMPIXELS; i++) { // For each pixel...
        pixels.setPixelColor(i, pixels.Color(0, 0, 0));
        pixels.show();   // Send the updated pixel colors to the hardware.
      }
    }
    counter_freigabe++;
   
  }
  
  
  delay(20);
}
