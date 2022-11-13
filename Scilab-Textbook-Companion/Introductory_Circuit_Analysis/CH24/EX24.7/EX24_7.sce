//Chapter 24, Example 24.7
clc
//Initialisation
duty = 0.28              //duty cycle
Vp = 7                   //peak value
Vb = -3                   //base-line voltage
t1=0.28           //time period
t2=0.72            //time period



//Calculation
Vav = (duty*Vp)+((1-duty)*Vb)     //Average Value in Volts
g=(Vp*t1)+(Vb*t2)                  //Average Value in Volts

//Result
printf("(a) Average Value, Vav = %.1f V \n",Vav)
printf("(c) G = %.1f V \n",g)

