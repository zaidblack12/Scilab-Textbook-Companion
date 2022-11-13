//Chapter 19, Example 19.1, page 860
clc
//Initialisation
p1=100                        //power in watt
p2=200                        //power in watt
p3=300                        //power in watt
var1=0                        //volt-amperes reactive
var2=700                        //volt-amperes reactive
var3=1500                        //volt-amperes reactive

//Calculation
va1=sqrt((p1**2)+(var1**2))                        //volt-amperes
va2=sqrt((p2**2)+(var2**2))                        //volt-amperes
va3=sqrt((p3**2)+(var3**2))                        //volt-amperes
pt=p1+p2+p3                        //total power in watt
qt=var3-var2                        //total volt-amperes
st=sqrt((pt**2)+(qt**2))                       //total volt-amperes reactive
fp=pt/st                       //power factor
i=st/p1                       //current in ampere
teta=acosd(fp)                       //angle in degree

//Result
printf("VA of load 1 = %d \n",va1)
printf("VA of load 2 = %.1f \n",va2) 
printf("VA of load 3 = %.2f \n",va3)
printf("Total Watt, Pt = %d \n",pt)
printf("Total volt-amperes reactive, Qt = %d \n",qt)
printf("Total volt-amperes, St = %d \n",st)
printf("Power factor, Fp = %.1f leading (C) \n",fp)
printf(" I = %d < + %.2f degree \n",i,teta)
