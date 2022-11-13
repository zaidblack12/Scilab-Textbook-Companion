//Chapter 10, Example 10.14
clc
//Variable Declaration
c1 = 200*10^-6                //capacitance in farad
c2 = 50*10^-6                 //capacitance in farad
c3 = 10*10^-6                 //capacitance in farad
e = 60                        //voltage

//Calculation
ctt = (1/c1)+(1/c2)+(1/c3)
ct = 1/ctt                     //total capacitance in farad
qt = ct*e                      //charge on each plate
v1 = qt/c1                     //voltage across each capacitor
v2 = qt/c2                     //voltage across each capacitor
v3 = qt/c3                     //voltage across each capacitor
e = v1+v2+v3                     //voltage

//Results
printf("a. Ct = %d uF \n",ct*10^6)
printf("b. Qt = %d uF \n",qt*10^6)
printf("c. V1 = %.1f V \n",v1)
printf("   V2 = %.1f V \n",v2)
printf("   V3 = %.1f V \n",v3)
printf("   E = %d V \n",e)
