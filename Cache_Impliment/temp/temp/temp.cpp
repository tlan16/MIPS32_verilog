#include <stdio.h>
#include <iostream>
// Motor
boolean Motor_Module_Enable = true;
boolean Motor_Debug_Mode = true;
unsigned short int Motor_A1_Pin = 5;
unsigned short int Motor_A2_Pin = 6;
unsigned short int Motor_B1_Pin = 3;
unsigned short int Motor_B2_Pin = 11;
unsigned short int Motor_Speed = 100; // larger = slower
unsigned short int Turn_Delay = 110;
unsigned short int Reverse_Delay = 50;
void Motor_Forward();
void Motor_Reverse();
void Motor_Left_Turn();
void Motor_Right_Turn();
// Ultrasonic
boolean Ultrasonic_Module_Enable = true;
boolean Ultrasonic_Debug_Mode = false;
#include <NewPing.h>
#define UC_Trig_Left_Pin 12
#define UC_Echo_Left_Pin 13
#define UC_Trig_Right_Pin 2
#define UC_Echo_Right_Pin 4
#define Max_Distance 200
unsigned int Distance_Left;
unsigned int Distance_Right;
unsigned int Min_Distance = 15;
boolean US_Flag = false;
unsigned int US_Current;
unsigned int US_Previous;
// Color Sensor
boolean Color_Sensor_Module_Enable = true;
boolean Color_Sensor_Debug_Mode = false;
unsigned short int Color_Pin = 0;
unsigned short int Color_Threshold = 300;
boolean Wrong_Color_Flag = false;
// Servo
boolean Servo_Module_Enable = true;
boolean Servo_Debug_Mode = false;
#include <Servo.h> 
Servo ServoH;
Servo ServoV;
Servo ServoC;
unsigned short int ServoH_Pin = 15; // analoge 1
unsigned short int ServoV_Pin = 16; // analoge 2
unsigned short int ServoC_Pin = 17; // analoge 3
unsigned short int ServoH_Delay = 15;
unsigned short int ServoV_Delay = 15;
unsigned short int ServoC_Delay = 15;

// System
int long unsigned GC = 1;
int long unsigned GC_Max = 100 * 500;
int long unsigned TGC_Turn = 0;
int long unsigned TGC_Reverse = 0;
int long unsigned TGC_ServoH = 0;
int long unsigned TGC_ServoV = 0;
int long unsigned TGC_ServoC = 0;

boolean Reverse_Flag = false;
boolean Turn_Flag = false;
boolean ServoH_Flag = false;
boolean ServoV_Flag = false;
boolean ServoC_Flag = false;
boolean Turn_Direction;

NewPing US1(UC_Trig_Left_Pin, UC_Echo_Left_Pin, Max_Distance);
NewPing US2(UC_Trig_Right_Pin, UC_Echo_Right_Pin, Max_Distance);

void setup()
{
	pinMode(Motor_A1_Pin, OUTPUT);
	pinMode(Motor_A2_Pin, OUTPUT);
	pinMode(Motor_B1_Pin, OUTPUT);
	pinMode(Motor_B2_Pin, OUTPUT);
	pinMode(Color_Pin, INPUT);

	ServoH.attach(ServoH_Pin);
	ServoV.attach(ServoV_Pin);
	ServoC.attach(ServoC_Pin);

	if (Motor_Debug_Mode | Ultrasonic_Debug_Mode | Color_Sensor_Debug_Mode | Servo_Debug_Mode)
		Serial.begin(9600);
}
void loop()
{
	// US
	if (Ultrasonic_Module_Enable)
	{
		Distance_Left = US1.ping() / US_ROUNDTRIP_CM;
		Distance_Right = US2.ping() / US_ROUNDTRIP_CM;
		US_Current = ((Distance_Left <= Min_Distance)
			| (Distance_Right <= Min_Distance)
			& (Distance_Left>0)
			& (Distance_Right>0));
		if (US_Current & US_Previous)
			US_Flag = true;
		else
			US_Flag = false;
		US_Previous = US_Current;

		if (Ultrasonic_Debug_Mode)
		{
			Serial.print("Left: ");
			Serial.print(Distance_Left);
			Serial.print(", Right: ");
			Serial.print(Distance_Right);
			Serial.println("");
		}
	} // end Ultrasonic_Module_Enable
	// Motor
	if (Motor_Module_Enable)
	{
		if (US_Flag & (!Turn_Flag) & (!Reverse_Flag))
		{
			GC = 1;
			TGC_Reverse = GC + Reverse_Delay;
			TGC_Turn = TGC_Reverse + Turn_Delay;
			Reverse_Flag = true;
			Turn_Flag = true;
		}
		if (Turn_Flag & Reverse_Flag)
		{
			if (GC == TGC_Reverse)
			{
				Reverse_Flag = false;
				Turn_Direction = random(0, 2);
			}
			else
			{
				Motor_Reverse();
				if (Motor_Debug_Mode)
					Serial.println("Reversing");
			}
		}
		else if (Turn_Flag & !Reverse_Flag)
		{
			if (GC == TGC_Turn)
			{
				Turn_Flag = false;
				Motor_Forward();
				TGC_Reverse = 0;
				TGC_Turn = 0;
			}
			else
			{
				if (Turn_Direction)
				{
					Motor_Left_Turn();
					if (Motor_Debug_Mode)
						Serial.println("Turning Left");
				}
				else
				{
					Motor_Right_Turn();
					if (Motor_Debug_Mode)
						Serial.println("Turning Right");
				}
			}
		}
		else
		{
			Motor_Forward();
		}
	} // end Motor_Module_Enable
	// Color Sensor
	if (Color_Sensor_Module_Enable)
	{
		if (analogRead(Color_Pin) > Color_Threshold)
		if (Color_Sensor_Debug_Mode)
			Serial.println("Wrong Color! Fliping");
		else
		if (Color_Sensor_Debug_Mode)
			Serial.println("Right color or Nothing");
	} // end Color_Sensor_Module_Enable
	// Servo
	if (Servo_Module_Enable)
	{
		ServoV.write(10);
		ServoH.write(70);
		ServoC.write(100);
	} // Servo_Module_Enable
	// System
	if (GC >= GC_Max)
		GC = 1;
	else
		GC++;
	delay(10);
}

void Motor_Forward()
{
	digitalWrite(Motor_A1_Pin, HIGH);
	analogWrite(Motor_A2_Pin, Motor_Speed);
	digitalWrite(Motor_B1_Pin, HIGH);
	analogWrite(Motor_B2_Pin, Motor_Speed);
}
void Motor_Reverse()
{
	analogWrite(Motor_A1_Pin, Motor_Speed);
	digitalWrite(Motor_A2_Pin, HIGH);
	analogWrite(Motor_B1_Pin, Motor_Speed);
	digitalWrite(Motor_B2_Pin, HIGH);
}
void Motor_Left_Turn()
{
	digitalWrite(Motor_A1_Pin, HIGH);
	analogWrite(Motor_A2_Pin, Motor_Speed);
	analogWrite(Motor_B1_Pin, Motor_Speed);
	digitalWrite(Motor_B2_Pin, HIGH);
}
void Motor_Right_Turn()
{
	analogWrite(Motor_A1_Pin, Motor_Speed);
	digitalWrite(Motor_A2_Pin, HIGH);
	digitalWrite(Motor_B1_Pin, HIGH);
	analogWrite(Motor_B2_Pin, Motor_Speed);
}
