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
      //Delay is added to help unsticking the button.
      delay(100);
    }
    else 
    {
      digitalWrite(ledPin, HIGH);
      ledOn = true;
      //Delay is added to help unsticking the button.
      delay(100);
    }
  }
}
