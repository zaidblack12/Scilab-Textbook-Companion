//Chapter 23, Example 23.11
clc
//Variable Declaration
r1=9100               //resistance in ohm
c1=0.47*10**-6         //capacitance in farad
r2=1000               //resistance in ohm


//Calculation
r12=(r1*r2)/(r1+r2)         //parallel resistance in ohm
f1=1/(2*3.14*r1*c1)         // frequency in hertz
fc=1/(2*3.14*r12*c1)         // frequency in hertz
al=-20*log10((r1+r2)/r2)      //maximum low-level attentuation

teta1=-(atand(f1/f1))+(atand(fc/f1))    //in degrees
teta2=-(atand(f1/fc))+(atand(fc/fc))    //in degrees
teta3=-(atand(f1/120))+(atand(fc/120))    //in degrees

//for magnitude plot
f = 1:10:8*fc;
av=((1+((f1./f).^2))./(1+((fc./f).^2))).^(1/2)         //-10*log10
f2 = f1
av2=10*log10((1+((f1./f2).^2))./(1+((fc./f2).^2)))
f3 = fc
av3=10*log10((1+((f1./f3).^2))./(1+((fc./f3).^2)))
x = [f2 f3];
y = [av2 av3];
scf(1)
gainplot(f,av);
a = gca();
a.y_location = 'left';
a.x_location = 'top';
a.x_label.text = 'frequency';
a.y_label.text = 'Av';
a.title.text = 'AcdB versus frequency for the filter';
plot2d(x,y);
plot(f2,av2,'*');
plot(f3,av3,'*');

//for phase plot
teta=-(atand(f1./f))+(atand(fc./f))
scf(2)
plot2d('ln',f,teta)
plot(f1,teta1,'*')
plot(fc,teta2,'*')
plot(120,teta3,'*')
xtitle('phase vs frequency for the filter')
xlabel('frequency')
ylabel('phase in degree')


//Results
printf('(a) f1 = %.1f Hz \n',f1)
printf('    fc = %.2f Hz \n',fc)
printf('(b) At f1 = 32.2 Hz, teta = %.2f degree \n',teta1)
printf('    At fc = 376.26 Hz, teta = %.2f degree \n',teta2)
printf('    At frequency midway between fc and f1, like 120 Hz, teta = %.2f degree \n',teta3)
