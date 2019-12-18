/*********
  Rui Santos
  Complete project details at https://randomnerdtutorials.com  
*********/

// Import required libraries
#include <WiFi.h>
#include <ESPAsyncWebServer.h>
#include "SPIFFS.h"
#include "FS.h"
#include "SD.h"
#include "SPI.h"
#include <ESPmDNS.h>
#include <WiFiAP.h>

// Replace with your network credentials
const char* ssid = "ESP32SD";
const char* password = "passwort";

// Set LED GPIO
const int ledPin = 2;
// Stores LED state
String ledState;

// Create AsyncWebServer object on port 80
AsyncWebServer server(80);

// Replaces placeholder with LED state value
String processor(const String& var){
  Serial.println(var);
  if(var == "STATE"){
    if(digitalRead(ledPin)){
      ledState = "ON";
    }
    else{
      ledState = "OFF";
    }
    Serial.print(ledState);
    return ledState;
  }
  return String();
}
 
void setup(){
  // Serial port for debugging purposes
  Serial.begin(115200);
  pinMode(ledPin, OUTPUT);
  if(!SD.begin()){
        Serial.println("Card Mount Failed");
        return;
    }

  // Initialize SPIFFS
  if(!SPIFFS.begin(true)){
    Serial.println("An Error has occurred while mounting SPIFFS");
    return;
  }

  WiFi.softAP(ssid, password);
  
  IPAddress myIP = WiFi.softAPIP();
  Serial.println(myIP);
  Serial.println("");

  // Route for root / web page
  server.on("/", HTTP_GET, [](AsyncWebServerRequest *request){
    request->send(SPIFFS, "/index.html", String(), false, processor);
  });
  
  // Route to load style.css file
  server.on("/style.css", HTTP_GET, [](AsyncWebServerRequest *request){
    request->send(SPIFFS, "/style.css", "text/css");
  });

  
  server.on("/0.jpg", HTTP_GET, [](AsyncWebServerRequest *request){
    request->send(SD, "/0.jpg", "img/jpg");
  });
  server.on("/1.jpg", HTTP_GET, [](AsyncWebServerRequest *request){
    request->send(SD, "/1.jpg", "img/jpg");
  });
  server.on("/2.jpg", HTTP_GET, [](AsyncWebServerRequest *request){
    request->send(SD, "/2.jpg", "img/jpg");
  });
  server.on("/3.jpg", HTTP_GET, [](AsyncWebServerRequest *request){
    request->send(SD, "/3.jpg", "img/jpg");
  });
  server.on("/4.jpg", HTTP_GET, [](AsyncWebServerRequest *request){
    request->send(SD, "/4.jpg", "img/jpg");
  });
  server.on("/5.jpg", HTTP_GET, [](AsyncWebServerRequest *request){
    request->send(SD, "/5.jpg", "img/jpg");
  });
  server.on("/6.jpg", HTTP_GET, [](AsyncWebServerRequest *request){
    request->send(SD, "/6.jpg", "img/jpg");
  });
  server.on("/7.jpg", HTTP_GET, [](AsyncWebServerRequest *request){
    request->send(SD, "/7.jpg", "img/jpg");
  });
  server.on("/8.jpg", HTTP_GET, [](AsyncWebServerRequest *request){
    request->send(SD, "/8.jpg", "img/jpg");
  });
  server.on("/9.jpg", HTTP_GET, [](AsyncWebServerRequest *request){
    request->send(SD, "/9.jpg", "img/jpg");
  });


  // Route to set GPIO to HIGH
  server.on("/on", HTTP_GET, [](AsyncWebServerRequest *request){
    digitalWrite(ledPin, HIGH);    
    request->send(SPIFFS, "/index.html", String(), false, processor);
  });
  
  // Route to set GPIO to LOW
  server.on("/off", HTTP_GET, [](AsyncWebServerRequest *request){
    digitalWrite(ledPin, LOW);    
    request->send(SPIFFS, "/index.html", String(), false, processor);
  });

  if (!MDNS.begin("esp32sd")) {
        Serial.println("Error setting up MDNS responder!");
        while(1) {
            delay(1000);
        }
    }
  Serial.println("mDNS responder started");

  // Start server
  server.begin();

  MDNS.addService("http", "tcp", 80);
}
 
void loop(){
  
}
