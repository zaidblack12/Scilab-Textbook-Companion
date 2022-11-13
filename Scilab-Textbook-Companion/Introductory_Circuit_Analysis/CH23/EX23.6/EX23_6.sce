//Chapter 23, Example 23.6
clc
//Variable Declaration
r1=20000               //resistance in ohm
c1=1200*10**-12         //capacitance in farad


//Calculation
fc=1/(2*3.14*r1*c1)         //cutoff frequency in hertz
f=fc/2                      //frequency in hertz
xc=1/(2*3.14*c1*f)          //capacitive reactancce in ohms
av=1/sqrt(1+((xc/r1)**2))    //voltage gain
teta=atand(xc/r1)             //phase in degree

//graph
x= 0 : 500 : fc*3
xc1=(2*3.14*c1*x).^-1
av1=r1./sqrt((r1**2)+(xc1**2))              //normalised gain
av2=xc1./sqrt((r1**2)+(xc1**2))              //normalised gain

teta1=atand(xc1/r1)              //phase plot
teta2=atand(r1*xc1**-1)              //phase plot
scf(1)
plot2d(x,av1)
xtitle('Normalised Plot - High Pass')
xlabel('f (log scale)')
ylabel('Av')

scf(2)
plot2d(x,av2)
xtitle('Normalised Plot - Low Pass')
xlabel('f (log scale)')
ylabel('Av')


scf(3)
plot2d(x,teta1)
xtitle('Phase Plot - High Pass')
xlabel('f (log scale)')
ylabel('teta')

scf(4)
plot2d(x,teta2)
xtitle('Phase Plot - Low Pass')
xlabel('f (log scale)')
ylabel('teta')

clc
//Results
printf('(a) fc = %.2f Hz \n',fc)
printf("Av = Vo / Vi = %.4f < %.2f degree",av,teta)
