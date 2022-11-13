//Chapter 23, Example 23.10
clc
//Variable Declaration
r1=1000               //resistance in ohm
c1=0.1*10**-6         //capacitance in farad



//Calculation
f1=1/(2*3.14*r1*c1)         //cutoff frequency in hertz

//for magnitude plot
f = 100:10:10*f1;
av = (1+(f1./f).^2).^(-1/2);         //-10*log10
av1 = -20*log10(f1/f1);
f2 = f1/10;
av2 = -20*log10(f1/f2);
f3 = f1/2;
av3 = -20*log10(f1/f3);
f4 = f1;
av4 = -20*log10(f1/f4);
x = [f2 f3 f4 f1];
y = [av2 av3 av4 av1];
scf(1)
gainplot(f,av);
a = gca();
a.y_location = 'left';
a.x_location = 'top';
a.x_label.text = 'frequency';
a.y_label.text = 'Av';
a.title.text = 'Magnitude Plot';
plot2d(x,y);

//for phase plot
f01 = 10:10:10*f1;
teta = atand(f1./f)
f11=f1
teta1 = atand(f1./f11)
f12=f1/10
teta2 = atand(f1./f12)
f13=f1*10
teta3 = atand(f1./f13)
x1 = [f11 f12 f13 ];
y1 = [teta1 teta2 teta3];
scf(2)
phaseplot(f,av,teta)
b = gca();
b.x_label.text = 'frequency';
b.y_label.text = 'Av';
b.title.text = 'Phase Plot';
plot2d(x1,y1)

f5=1000                                       //frequency in hertz
av3 = 20*log10(1/sqrt((((f1/f5)**2)+1)));     //gain


//Results
printf('(a) fc = %.2f Hz \n',f1)
printf('      Magnitude plot shown in window 1 \n')
printf('(b) |AvdB| = %.2f dB \n',av3)
printf('(c) Phase plot shown in window 2')

