//Chapter 5, Example 5.1
clc
//Variable Declaration
r1 = 2                         //resistance1
r2 = 1                         //resistance2
r3 = 5                         //resistance3
E = 20                         //supply voltage



//Calculation
rt = r1+r2+r3                 //total resistance
I = E/rt                      //current
V1 = I*r1                     //voltage1
V2 = I*r2                     //voltage2
V3 = I*r3                     //voltage3
P1 = V1*I                     //power1
P2 = I*I*r2                   //power2
P3 = V3*V3/r3                 //power3
Pdel1 = E*I             //power delivered by source
Pdel = P1+P2+P3         //Total power
//Results
printf("a. RT = %d ohm \n",rt)
printf("b. Is = %.1f A \n",I)
printf("c. V1 = %d V\n",V1)
printf("   V2 = %.1f V \n",V2)
printf("   V3 = %.1f V \n",V3)
printf("d. P1 = %.1f W \n",P1)
printf("   P2 = %.2f W \n",P2)
printf("   P3 = %.2f W \n",P3)
printf("e. Pdel = %d W \n",Pdel1)
printf("   %d W = %d W  (checks) \n",Pdel1,Pdel)
