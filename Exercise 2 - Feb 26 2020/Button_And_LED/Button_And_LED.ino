int ledPin = 13;
int btnPin = 12;
bool ledOn = false;
void setup() {
  pinMode(ledPin, OUTPUT);
  pinMode(btnPin, INPUT);
}

void loop() {
  if (digitalRead(btnPin)==HIGH)
  {
    if (ledOn)
    {
      digitalWrite(ledPin, LOW);
      ledOn = false;
    }
    else 
    {
      digitalWrite(ledPin, HIGH);
      ledOn = true;
    }
  }

}
