//Chapter 14, Example 14.10
clc
//Variable Declaration
vm = 10                    //voltage in volts
im = 5                     //current in ampere


//Calculation
p = (vm*im)/2                        //power dissipation in watt
r= (vm/im)                           //resistance in ohm
p1 = ((0.707*vm)*(0.707*vm))/r       //power in watt
p2 = ((0.707*im)*(0.707*im))*r       //power in watt

//Results
printf("P = %d W \n",p)
printf("P = %.2f W \n",p1)
printf("P = %.2f W \n",p2)
