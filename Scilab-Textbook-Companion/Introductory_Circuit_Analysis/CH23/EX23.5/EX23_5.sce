//Chapter 23, Example 23.5
clc
//Variable Declaration
r1=1000                      //resistance in ohm
c1=500*10**-12               //capacitance in farad
f1=100000                    //frequency in hertz
f2=1*10**6                   //frequency in hertz
vi=20                        //input voltage

//Calculation
fc=1/(2*3.14*r1*c1)                  //cutoff frequency in hertz
xc=1/(2*3.14*c1*fc)               //impedance in ohm
xc1=1/(2*3.14*c1*f1)               //impedance in ohm
xc2=1/(2*3.14*c1*f2)               //impedance in ohm
vo1=vi/sqrt(((r1/xc1)**2)+1)        //output voltage
vo2=vi/sqrt(((r1/xc2)**2)+1)        //output voltage
voc=vi/sqrt(((r1/xc)**2)+1)        //output voltage 

//graph
//for frequency response
x= 0.1*fc : 10000 : fc*20
xc11=(2*3.14*c1*x).^-1
vo=vi./sqrt(((r1./xc11)**2)+1)
plot2d('ln',x,vo)
plot(f1,vo1,'*')
plot(f2,vo2,'*')
plot(fc,voc,'*')
xtitle('Frequency response for the low-pass R-C network')
xlabel('f');
ylabel('Vo');

//for normalized plot
scf(2)
plot2d('ln',x,vo/vi)
plot(f1,vo1/vi,'*')
plot(f2,vo2/vi,'*')
plot(fc,voc/vi,'*')
xtitle('Normalized plot for the low-pass R-C network')
xlabel('f');
ylabel('Av');

//Results
printf('(a) fc = %.2f kHz \n',fc)
printf('(b) At f = 100 kHz, Vo = %.2f V \n',vo1)
printf('    At f = 1 MHz, Vo = %.1f V \n',vo2)
printf("Vi = %.2f mV\n",vi*10**3) 
