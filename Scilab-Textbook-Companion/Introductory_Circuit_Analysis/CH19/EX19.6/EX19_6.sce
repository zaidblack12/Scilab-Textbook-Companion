//Chapter 19, Example 19.6, page 867
clc
//Initialisation
s=20000                 //in VA
fp=0.7                  //power factor
p1=10000                 //power in watt
p2=14000                 //power in watt from fig. 19.28
e=1000                   //voltage
fp2=0.95               //power factor
f=60                      //frequency in hertz

//Calculation
p=s*fp                    //power factor
teta = acosd(fp)                 //phase angle in degree
ql=s*sind(teta)                 //in VAR
st=sqrt(((p1+p2)**2)+(ql**2))                 //in VA
it=st/e                          //current in ampere
teta2=acosd(fp2)                //phase angle in degree
ql1=(p1+p2)*tand(teta2)               //in VAR
qc=ql-ql1               //in VAR
xc=(e**2)/qc                       //capacitive impedance in ohm
c=1/(2*3.14*f*xc)                         //capacitance ih farad
st1=sqrt(((p1+p2)**2)+(ql1**2))               //in VA
it1=st1/e                        //current in ampere

//Result
printf("(a) It = %.2f A \n",it)
printf("     C = %.2f uF \n",c*10**6)
printf("(b)  I = %.2f A \n",it1)
