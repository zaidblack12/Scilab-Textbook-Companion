//Chapter 5, Example 5.7
clc
//Variable Declaration
r1 = 4                     //resistor1
r2 = 6                     //resistor2
e = 20                     //supply voltage

//Calculation
rt = r1+r2                //total resistance
i = e/rt                  //current
v1 = i*r1                 //voltage1
v2 = i*r2                 //voltage2
p4 = v1*v1/r1             //power of R1
p6 = (i*i)*r2             //power of R2
pe = e*i                  //power of source
pe1 = p4+p6               //Total power
sv = v1+v2                //Total voltage
//Results
printf("a.  Rt = %d ohm \n",rt)
printf("b.  I = %d A \n",i)
printf("c.  V1 = %d V \n",v1)
printf("    V2 = %d V \n",v2)
printf("d.  P4 = %d W \n",p4)
printf("    P6 = %d W \n",p6)
printf("e.  Pe = %d W \n",pe)
printf("    %d W = %d W (checks)\n",pe,pe1)
printf("f.  %d V = %d V (checks)",e,sv)
