//Chapter 22, Example 22.5
clc
//Variable Declaration
vo = 100                        //in volt
io = 20                      //in ampere
teta = 53.13                 //angle in degree
ro = 3                      //in ohm
vr = 60                     //in volt
el = 173.2                       //in volt 
il = 20                           //in ampere
xo = 4                          //in ohm
//Calculation
po = vo*io*cosd(teta)                   //in watt
po1 = io*io*ro                        //in watt
po2 = (vr*vr)/ro                       //in watt
pt = 3*po                               //in watt
pt1 = sqrt(3)*el*il*cosd(teta)           //in watt
qo = vo*io*sind(teta)                    //in VAR
qo1 = io*io*xo                               //in VAR
qt = 3*qo                                //in VAR
qt1 = sqrt(3)*el*il*sind(teta)               //in VAR
so = vo*io                               //in VA
st = 3*so                                //in VA
st1 = sqrt(3)*el*il                      //in VA
fp = pt1/st1                           //lagging
//Results
printf("a. Po = %d W \n",po)
printf("   Po = %d W \n",po1)
printf("   Po = %d W \n",po2)
printf("   Pt = %d W \n",pt)
printf("   Pt = %d W \n",pt1)
printf("b. Qo = %d VAR \n",qo)
printf("   Qo = %d VAR \n",qo1)
printf("   Qt = %d VAR \n",qt)
printf("   Qt = %d VAR \n",qt1)
printf("c. So = %d VA \n",so)
printf("   St = %d VA \n",st)
printf("   St = %d VA \n",st1)
printf("d. Fp = %.1f lagging \n",fp)
