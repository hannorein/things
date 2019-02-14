/*
    This sketch demonstrates how to set up a simple HTTP-like server.
    The server will set a GPIO pin depending on the request
      http://server_ip/gpio/0 will set the GPIO2 low,
      http://server_ip/gpio/1 will set the GPIO2 high
    server_ip is the IP address of the ESP8266 module, will be
    printed to Serial when the module is connected.
*/

#include <ESP8266WiFi.h>

const char* ssid = "TP-LINK_DA44";
const char* password = "70982589";
int ms = 500;
int state = 0;
unsigned long next = 0;

// Create an instance of the server
// specify the port to listen on as an argument
WiFiServer server(80);

void setup() {
  Serial.begin(115200);
  delay(10);

  pinMode(LED_BUILTIN, OUTPUT);
  digitalWrite(LED_BUILTIN, 0);

  // Connect to WiFi network
  Serial.println();
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);
  IPAddress ip(192, 168, 0, 176);
  IPAddress gateway(192, 168, 0, 1);
  IPAddress subnet(255, 255, 255, 0);
  IPAddress dns(192, 168, 0, 1);

  WiFi.config(ip, gateway, subnet, dns);

  WiFi.begin(ssid, password);

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println("");
  Serial.println("WiFi connected");

  // Start the server
  server.begin();
  Serial.println("Server started");

  // Print the IP address
  Serial.println(WiFi.localIP());
}

void loop() {
  int cur = millis();

  if (cur >= next) {
    state = !state;
    digitalWrite(LED_BUILTIN, state);
    next += ms;
  }

  // Check if a client has connected
  WiFiClient client = server.available();
  if (!client) {
    return;
  }

  // Wait until the client sends some data
  Serial.println("new client");
  while (!client.available()) {
    delay(10);
  }

  // Read the first line of the request
  String req = client.readStringUntil('\r');
  Serial.println(req);
  client.flush();

  // Match the request
  int val = req.lastIndexOf("ms=");
  if (val > 0) {
    String substr1 = req.substring(val + 3);
    int val1 = substr1.indexOf(" ");
    String substr = substr1.substring(0, val1);
    ms = substr.toInt() / 2;
    Serial.println("setting new value");
    Serial.println(substr);
  }
  client.setNoDelay(true);


  // Prepare the response
  String s = "HTTP/1.1 200 OK\r\nContent-Type: text/html\r\n\r\n<!DOCTYPE HTML>\r\n<html>\r\nHanno Rein's Wifi Driven Damped SHO<br>Current period: ";
  s += ms * 2;
  s += "ms.<br><form method='get'>New value: <input type='text' name='ms'><br> <input type='submit' value='Submit'></form>";
  // Send the response to the client
  client.print(s);
  delay(10);
  client.flush();

  Serial.println("Client disonnected");

  // The client will actually be disconnected
  // when the function returns and 'client' object is detroyed
}

