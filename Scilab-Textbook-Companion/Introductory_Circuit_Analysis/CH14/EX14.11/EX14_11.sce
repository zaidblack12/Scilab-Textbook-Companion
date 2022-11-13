//Chapter 14, Example 14.11
clc
//Variable Declaration
vm = 100                    //peak voltage (a)
im = 20                     //peak current
ov = 40                     //theta voltage in degree (a)
oi = 70                     //theta current in degree (a)
vm1 = 150                   //peak voltage (b)
im1 = 3                     //peak current (b)
ov1 = -70                   //theta voltage in degree (b)
oi1 = -50                   //theta current in degree (b)

//Calculation
p = ((vm*im)/2)*0.866        //power (a) in watt
p1 = ((vm1*im1)/2)*0.9397    //power (b) in watt

//Results
printf("P = %d W \n",p)
printf("P = %.2f W \n",p1)
