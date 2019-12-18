#include "WiFi.h"
#include "SPIFFS.h"
#include "ESPAsyncWebServer.h"
#include <ESPmDNS.h>
 
const char* ssid = "ESP32-CAM";
const char* password =  "passwort";
String joystickdata;
String xwert, ywert;
int x, y;
int position;
 
AsyncWebServer server(80);
AsyncWebSocket ws("/ws");
 
AsyncWebSocketClient * globalClient = NULL;
 
void onWsEvent(AsyncWebSocket * server, AsyncWebSocketClient * client, AwsEventType type, void * arg, uint8_t *data, size_t len){
 
  if(type == WS_EVT_CONNECT){
 
    Serial.println("Websocket client connection received");
 
  } else if(type == WS_EVT_DISCONNECT){
    Serial.println("Client disconnected");
    Serial.println("-----------------------");
 
  } else if(type == WS_EVT_DATA){
 
    Serial.print("Data received: ");
    joystickdata = "";
 
    for(int i=0; i < len; i++) {
          joystickdata += (char) data[i];
    }
 
    Serial.println(joystickdata);
    convertStringtoInt(joystickdata);
  }
}

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
 
void setup(){
  Serial.begin(115200);
 
  if(!SPIFFS.begin()){
     Serial.println("An Error has occurred while mounting SPIFFS");
     return;
  }
 
  WiFi.begin(ssid, password);
 
  while (WiFi.status() != WL_CONNECTED) {
    delay(1000);
    Serial.println("Connecting to WiFi..");
  }
 
  Serial.println(WiFi.localIP());
  if (!MDNS.begin("auto")) {
        Serial.println("Error setting up MDNS responder!");
        while(1) {
            delay(1000);
        }
    }
  Serial.println("mDNS responder started");
 
  ws.onEvent(onWsEvent);
  server.addHandler(&ws);
 
  server.begin();
}
 
void loop(){
   if(globalClient != NULL && globalClient->status() == WS_CONNECTED){
      String randomNumber = String(random(0,20));
      globalClient->text(randomNumber);
   }
   delay(4000);
}
