

#include <ros.h>
#include <PID_v1.h>
#include <std_msgs/String.h>
#include <SoftwareSerial.h>

#define E1 13  // Enable Pin for motor 2
#define I1 12     // Control pin 1 for motor 2
#define I2 11     // Control pin 2 for motor 2

#define E2 10  // Enable Pin for motor 1
#define I3 9    // Control pin 1 for motor 1
#define I4 8     // Control pin 2 for motor 1

unsigned long tiempo;
int contM1=0;
int contM2=0;
int valueAntM1 = 0;
int valueAntM2 = 0;
int valueM1=0;
int valueM2=0;

// Direccion (1 adelante, -1 atras)
int dir_1 = 1;
int dir_2 = 1;

double velM1=20;
double velM2=0;

double kpr = .9;
double kir = .7;
double kdr = 0.15;

double kpl = .9;
double kil = .6;
double kdl = 0.1;

double err_r = 0;
double sum_err_r = 0;
double prev_err_r = 0;

double err_l = 0;
double sum_err_l = 0;
double prev_err_l = 0;

double pid_r = 0;
double pid_l = 0;

int out_r = 0;
int out_l = 0;

void setup() {
        for (int i =8 ; i<14 ; i++)                     // Inicializamos los pines
        pinMode(i, OUTPUT);

        pinMode(A0, INPUT);//Lectura Motor1
        pinMode(A1, INPUT);//Lectura Motor2

        digitalWrite(E1, HIGH);
        digitalWrite(E2, HIGH);
        Serial.begin(9600);
        tiempo = millis();
}

void loop()
   {    

      valueM1= digitalRead(A0);  
      valueM2= digitalRead(A1);
      

      if(valueM1==1 && valueAntM1==0){
        contM1= contM1+1;
      }
      valueAntM1=valueM1;

      if(valueM2==1 && valueAntM2==0){
        contM2= contM2+1;
      }
      valueAntM2=valueM2;

      
      if(millis() >= tiempo+250){

        //PID
    
    // Error actual es target - velocidad en ticks/segundo
    err_r = velM2 - (1000/250)*contM2*dir_1;
    err_l = velM1 - (1000/250)*contM1*dir_2;

    // Error integral
    sum_err_r += err_r;
    sum_err_l += err_l;

    // PID completo
    pid_r = err_r*kpr + (err_r - prev_err_r)*kdr + sum_err_r*kir;
    pid_l = err_l*kpl + (err_l - prev_err_l)*kdl + sum_err_l*kil;

    // Actualizar error previo
    prev_err_r = err_r;
    prev_err_l = err_l;

    // Ajustar salida
    out_r = min(abs(pid_r), 255);
    out_l = min(abs(pid_l), 255);
    
    // Por ahora, solo hay targets positivos.
    if (pid_r >= 0){
      analogWrite(I1, out_r);
      analogWrite(I2, 0);
      dir_1 = 1;
    }else{
      analogWrite(I1, 0);
      analogWrite(I2, out_r);
      dir_1 = -1;
    }
    
    // Por ahora, solo hay targets positivos
    if (pid_l >= 0){
      analogWrite(I4, out_l);
      analogWrite(I3, 0);
      dir_2 = 1;
    }else{
      analogWrite(I4, 0);
      analogWrite(I3, out_l);
      dir_2 = -1;
    }

      contM1=0;
      contM2=0;
      tiempo= millis();
    }
}
