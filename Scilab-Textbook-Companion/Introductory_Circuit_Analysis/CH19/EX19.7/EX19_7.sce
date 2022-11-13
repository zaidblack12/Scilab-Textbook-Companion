//Chapter 19, Example 19.7, page 872
clc
//Initialisation
p=75                 //power in watt
i=5                 //current in watt
e=120                   //voltage
rad1=377                 //angular frequency in rad/s
p2=80                 //power in watt
i2=4                 //current in watt
p3=52                 //power in watt
i3=2                 //current in watt

//Calculation
r=p/i**2                             //resistance in ohm
zt=e/i                             //resistance in ohm
xl=sqrt((zt**2)-(r**2))            //resistance in ohm
l=xl/(rad1)                            //inductance in henry
r2=p2/i2**2                            //resistance in ohm
r3=p3/i3**2                            //resistance in ohm
zt3=e/i3                            //resistance in ohm
xl3=sqrt((zt3**2)-(r3**2))           //resistance in ohm
l3=xl3/(rad1)                            //inductance in henry

//Result
printf("(a) R = %d ohm \n    L = %.2f mH \n",r,l*10**3)
printf("(b) R = %d ohm \n",r2)
printf("(c) R = %d ohm \n    L = %.2f mH",r3,l3*10**3)
