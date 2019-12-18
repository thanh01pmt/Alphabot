/*
 * Includes
 */
 
#include "WiFi.h"
#include "AsyncUDP.h"
#include <ESPAsyncWebServer.h>
#include <ESPmDNS.h>
#include <SPIFFS.h>

/*
 * Variabeln
 */

// WiFi
const char * ssid = "EL-Parcour";
const char * password = "passwort";

// Autos
String cars[10][3];
int carfreeid = 0;
int carcounterd = 0;
int carcounterc = 0;
String caridtowebd = "";
String caridtowebc = "";

// Websocket
String datawebsite;

/*
 * Initialisierung
 */

AsyncUDP udp;
AsyncWebServer server(80);
AsyncWebSocket ws("/ws");

/*
 * Funktionen
 */

// Webserver
// Callback: send homepage
void onIndexRequest(AsyncWebServerRequest *request) {
  IPAddress remote_ip = request->client()->remoteIP();
  Serial.println("[" + remote_ip.toString() +
                  "] HTTP GET request of " + request->url());
  request->send(SPIFFS, "/index.html", "text/html");
}

// Callback: send 404 if requested file does not exist
void onPageNotFound(AsyncWebServerRequest *request) {
  IPAddress remote_ip = request->client()->remoteIP();
  Serial.println("[" + remote_ip.toString() +
                  "] HTTP GET request of " + request->url());
  request->send(404, "text/plain", "Not found");
}

// UDP
void UDPconvert(String cmd, IPAddress ipaddress) {
  if (cmd.substring(0, 1) == "Q") {
    if (cmd.substring(1, 2) == "A") {
      if (cmd.substring(2, 3) == " "){
        cars[carfreeid][1] = (String)ipaddress;
        cars[carfreeid][0] = "CONY";
        cars[carfreeid][2] = "S";
        if (udp.connect(ipaddress, 1234)) {
          udp.print("A" + (String)carfreeid + "  ");
          udp.close();
        }
        Serial.println("Connected to Car " + (String)carfreeid + " with ip adress: " + (String)cars[carfreeid][1]);
        for (int i = 0; i < 10; i++) {
          if (cars[i][0] == "CONN" || cars[i][0] == NULL) {
            carfreeid = i;
            Serial.println("Next Car ID: " + (String)carfreeid);
            break;
          }
        }
      } else if (cmd.substring(2, 3) == "A") {
          if (cars[cmd.substring(3, 4).toInt()][1] == (String)ipaddress) {
            cars[cmd.substring(3, 4).toInt()][0] = "CONY";
            //Serial.println("Immernoch connected mit auto " + cmd.substring(3, 4));
          }
      }
    }
  }  
}

// Websocket
void onWsEvent(AsyncWebSocket * server, AsyncWebSocketClient * client, AwsEventType type, void * arg, uint8_t *data, size_t len){
 
  if(type == WS_EVT_CONNECT){
    Serial.println("Websocket client connection received");
    client->text("Hello from ESP32 Server");
 
  } else if(type == WS_EVT_DISCONNECT){
    Serial.println("Client disconnected");
 
  } else if(type == WS_EVT_DATA){
    datawebsite = "";
    //Serial.print("Data received: ");
    for(int i=0; i < len; i++) {
      datawebsite += (char)data[i];
    }
    //Serial.println(datawebsite);
    if (datawebsite == "Q") {
      carcounterd = 0;
      carcounterc = 0;
      caridtowebd = "";
      caridtowebc = "";
      for (int i = 0; i < 10; i++) {
        //if (cars[i][0] == "CONY" || cars[i][0] == "CONA") {
        if (cars[i][0] == "CONY") {
          carcounterc ++;
          caridtowebc += (String)i;
        } else if (cars[i][0] == "CONN") {
        //} else if (cars[i][0] == "CONN" || cars[i][0] == "CONA") {
          carcounterd ++;
          caridtowebd += (String)i;
        }
      }
      client->text("Q" + (String)carcounterc + caridtowebc + (String)carcounterd + caridtowebd);
    }
    if (datawebsite.substring(0, 1) == "T") {
      if (udp.connect(IPAddress(239,1,2,3), 1234)) {
      //if (udp.connect(IPAddress(cars[datawebsite.substring(1, 2).toInt()][1].substring(0, 3).toInt(), cars[datawebsite.substring(1, 2).toInt()][1].substring(3, 4).toInt(), cars[datawebsite.substring(1, 2).toInt()][1].substring(4, 5).toInt(), cars[datawebsite.substring(1, 2).toInt()][1].substring(5, 6).toInt()), 1234)) {
        if (cars[datawebsite.substring(1, 2).toInt()][2] == "S"){
          udp.print("F" + (String)datawebsite.substring(1, 2) + "  ");
          cars[datawebsite.substring(1, 2).toInt()][2] = "F";
        } else if (cars[datawebsite.substring(1, 2).toInt()][2] == "F"){
          udp.print("S" + (String)datawebsite.substring(1, 2) + "  ");
          cars[datawebsite.substring(1, 2).toInt()][2] = "S";
        }
        udp.close();
      }
      client->text("T" + datawebsite.substring(1, 2) + cars[datawebsite.substring(1, 2).toInt()][2]);
    }
  }
}

/*
 * SETUP
 */

void setup() {
  // Serial
  Serial.begin(115200);
  // SPIFFS
  // Make sure we can read the file system
  if( !SPIFFS.begin()){
    Serial.println("Error mounting SPIFFS");
    while(1);
  }
  // WiFi
  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid, password);
  
  Serial.println("Connecting to WiFi...");
  if (WiFi.waitForConnectResult() != WL_CONNECTED) {
      Serial.println("WiFi Failed");
      while(1) {
          delay(1000);
      }
  }
  // MDNS
  if (!MDNS.begin("master")) {
    Serial.println("Error setting up MDNS responder!");
    while(1) {
        delay(1000);
    }
  }
  Serial.println("mDNS responder started");

  // Websocket
  ws.onEvent(onWsEvent);
  server.addHandler(&ws);

  // Webserver
  // On HTTP request for root, provide index.html file
  server.on("/", HTTP_GET, onIndexRequest);
  // Handle requests for pages that do not exist
  server.onNotFound(onPageNotFound);
  server.begin();

  // MDNS
  MDNS.addService("http", "tcp", 80);
  
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
          //reply to the client
          String udpinput = "";
          for (int i = 0; i < packet.length(); i++) {
            udpinput += (char)packet.data()[i];
          }
          UDPconvert(udpinput, packet.remoteIP());
      });
  }
}

/*
 * LOOP
 */

void loop() {
    delay(1000);

    // UDP Send Auto ID Request
    if (udp.connect(IPAddress(239,1,2,3), 1234)) {
      for (int i = 0; i < 10; i++) {
        if (cars[i][0] == "CONA") {
          cars[i][0] = "CONN";
        } else if (cars[i][0] == "CONY") {
          cars[i][0] = "CONA";
        }
      }
      udp.print("QAA ");
      udp.close();
    }
}
