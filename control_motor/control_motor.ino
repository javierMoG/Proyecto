

#include <ros.h>
#include <PID_v1.h>
#include <std_msgs/String.h>

#define E1 13  // Enable Pin for motor 2
#define I1 12     // Control pin 1 for motor 2
#define I2 11     // Control pin 2 for motor 2

#define E2 10  // Enable Pin for motor 1
#define I3 9    // Control pin 1 for motor 1
#define I4 8     // Control pin 2 for motor 1

unsigned long tiempo1=0;
unsigned long tiempo2=0;
unsigned long tiempoT=0;
int contM1=0;
int contM2=0;
int valueAntM1 = 0;
int valueAntM2 = 0;
int valueM1=0;
int valueM2=0;
int aux=0;

void setup() {
        for (int i =8 ; i<14 ; i++)                     // Inicializamos los pines
        pinMode(i, OUTPUT);

        pinMode(A0, INPUT);//Lectura Motor1
        pinMode(A1, INPUT);//Lectura Motor2
        Serial.begin(9600);
}

void loop()
   {    
      aux= aux+1;
      //prendemos motor Derecho
      digitalWrite(E2, HIGH);// Activamos el Motor1
      digitalWrite(I4, 1);// Avanza Motor1     
      digitalWrite(I3, LOW);// Reversa Motor1
      

      
      // Activamos Motor Izquierdo
      digitalWrite(E1, HIGH);// Activamos el Motor2
      digitalWrite(I1, 1);//Avanza Motor    
      digitalWrite(I2, LOW);//Reversa Motor2

      if (aux>0){
      tiempo1 = millis();
      valueM1= digitalRead(A0);  
      valueM2= digitalRead(A1);
      

      if(valueM1==1 && valueAntM1==0){
        contM1= contM1+1;
      }

      if(valueM2==1 && valueAntM2==0){
        contM2= contM2+1;
      }

      if(contM1==18){
        tiempo2 = millis();
        tiempoT=tiempo1-tiempo2;
        tiempoT= tiempoT/1000;
        Serial.println(tiempoT);
      }

      valueAntM1=valueM1;
      valueAntM2=valueM2;
      }
}
