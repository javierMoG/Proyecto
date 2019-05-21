#define E1 13  // Enable Pin for motor 2
#define I1 12     // Control pin 1 for motor 2
#define I2 11     // Control pin 2 for motor 2

#define E2 10  // Enable Pin for motor 1
#define I3 9    // Control pin 1 for motor 1
#define I4 8     // Control pin 2 for motor 1


void setup() {
        for (int i =8 ; i<14 ; i++)                     // Inicializamos los pines
        pinMode(i, OUTPUT);

        pinMode(A0, INPUT);//Lectura Motor1
        pinMode(A1, INPUT);//Lectura Motor2
        Serial.begin(9600);
}

void loop()
   {    
        //prendemos motor Derecho
        digitalWrite(E2, HIGH);// Activamos el Motor1
        digitalWrite(I4, 0);// Avanza Motor1     
        digitalWrite(I3, LOW);// Reversa Motor1
        

        
        // Activamos Motor Izquierdo
        digitalWrite(E1, HIGH);// Activamos el Motor2
        digitalWrite(I1, 0);//Avanza Motor    
        digitalWrite(I2, LOW);//Reversa Motor2

        int valueS1 = 0;
        int valueS2 = 0;
        
        valueS1= digitalRead(A0);  
        valueS2= digitalRead(A1);

        Serial.println(valueS2);
}
