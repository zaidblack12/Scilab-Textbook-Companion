//Chapter 23, Example 23.7
clc
//Variable Declaration
r1=1000               //resistance in ohm
c1=1.5*10**-9         //capacitance in farad
r2=40000               //resistance in ohm
c2=4*10**-12         //capacitance in farad


//Calculation
fc1=1/(2*3.14*r1*c1)         //cutoff frequency in hertz
fc2=1/(2*3.14*r2*c2)         //cutoff frequency in hertz



//graph
x1= 0 : 1000 : fc1*200
x2= 0 : 1000 : fc2*1000
xc1=(2*3.14*c1*x1).^-1                      //impedance in ohm
xc2=(2*3.14*c2*x2).^-1                     //impedance in ohm
av1=r1./sqrt((r1**2)+(xc1**2))              //normalised gain
av2=xc2./sqrt((r2**2)+(xc2**2))              //normalised gain


scf(1)
//plot2d('ln',[x1 x2],[av1 av2])
plot2d('ln',x1,av1)
xtitle('Normalised Plot - High Pass')
xlabel('f')
ylabel('Vo')

scf(2)
plot2d('ln',x2,av2)
xtitle('Normalised Plot - Low Pass')
xlabel('f')
ylabel('Vo')


clc
//Results
printf('(a) High Pass filter, fc = %.1f kHz \n',fc1/1000)
printf('    Low Pass filter, fc = %.1f kHz \n',fc2/1000)
printf("(c) Av = Vo / Vi = %.4f < %.2f degree",av,teta)
