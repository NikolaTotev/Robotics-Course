int potPin = 0; 
int svetodiod = 13; 

void setup ()
{
  pinMode (svetodiod, OUTPUT); 
}
void loop ()
{
  digitalWrite (svetodiod, HIGH); 
  delay (analogRead(potPin));
  digitalWrite (svetodiod, LOW); 
  delay (analogRead(potPin)); 
}
