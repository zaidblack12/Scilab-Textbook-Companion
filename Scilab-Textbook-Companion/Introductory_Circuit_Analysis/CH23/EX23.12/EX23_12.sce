//Chapter 23, Example 23.12
clc
f1=50                   //frequency in hertz
f2=200                  //frequency in hertz
f3=10000                //frequency in hertz
f4=20000                //frequency in hertz
f8=8500                //frequency in hertz
f9=1000               //frequency in hertz

//Calculations
AvdB1=-20*log10(sqrt((1+(f1/f3)^2)*(1+((f2/f3)^2))*(1+(f3/f3)^2)*(1+((f3/f4)^2))))                         //in dB
AvdB2=-20*log10(sqrt((1+(f8/f3)^2)*(1+((f8/f4)^2))))             //in dB
BW=f8-f2                          //in hertz
AvdB3=-20*log10(sqrt((1+(f1/f9)^2)*(1+((f2/f9)^2))))                //in dB

//phase plot
f = 10:100:200000;
teta=(atand(f1./f))+(atand(f2./f))-(atand(f./f3))-(atand(f./f4))
scf(1)
plot2d('ln',f,teta)
xgrid(1)
a = gca();
a.y_location = 'left';
a.x_location = 'top';
a.x_label.text = 'frequency';
a.y_label.text = 'Phase';
a.title.text = 'Phase response';

//for magnitude plot
av = -((1+(f1./f)^2).*(1+((f2./f).^2)))^(-1/2);
av1 = -20*log10(f1/f1);
f12 = f1/10;
av2 = -20*log10(f1/f12);
f13 = f1/4;
av3 = -20*log10(f1/f13);
f14 = f1/2;
av4 = -20*log10(f1/f14);

x = [f12 f13 f14 f1];
y = [av2 av3 av4 av1];
scf(2)
gainplot(f,av);
a = gca();
a.y_location = 'left';
a.x_location = 'top';
a.x_label.text = 'frequency';
a.y_label.text = 'Av';
a.title.text = 'Bode';
plot2d(x,y);

f1=f2
av1 = -20*log10(f1/f1);
f12 = f1/10;
av2 = -20*log10(f1/f12);
f13 = f1/4;
av3 = -20*log10(f1/f13);
f14 = f1/2;
av4 = -20*log10(f1/f14);

x = [f12 f13 f14 f1];
y = [av2 av3 av4 av1];

gainplot(f,av);
a = gca();
a.y_location = 'left';
a.x_location = 'top';
a.x_label.text = 'frequency';
a.y_label.text = 'Av';
a.title.text = 'Bode';
plot2d(x,y);




av = -((1+(f./f3)^2).*(1+((f./f4).^2)))^(-1/2);

gainplot(f,av);
a = gca();
a.y_location = 'left';
a.x_location = 'top';
a.x_label.text = 'frequency';
a.y_label.text = 'Av';
a.title.text = 'Bode';
plot2d(x,y);


f1 = f3;
f = 0.1*f1:100:10*f1;
av = (1+(f/f1)^2)^(-1/2);
av1 = -20*log10(f1/f1);
f2 = f1*10;
av2 = -20*log10(f2/f1);
f3 = f1*4;
av3 = -20*log10(f3/f1);
f4 = f1*2;
av4 = -20*log10(f4/f1);

x = [f1 f4 f3 f2];
y = [av1 av4 av3 av2];
plot2d(x,y);

f1 = f4;
f = 0.1*f1:100:10*f1;
av = (1+(f/f1)^2)^(-1/2);
av1 = -20*log10(f1/f1);
f2 = f1*10;
av2 = -20*log10(f2/f1);
f3 = f1*4;
av3 = -20*log10(f3/f1);
f4 = f1*2;
av4 = -20*log10(f4/f1);

x = [f1 f4 f3 f2];
y = [av1 av4 av3 av2];
plot2d(x,y);


printf('for 10kHz,\n')
printf('AvdB = %.1f dB \n',AvdB1)
printf('for 8.5kHz, \n')
printf('AvdB = %.1f dB \n',AvdB2)
printf('BW = %.1f kHz \n',BW/1000)
printf('for midrange of bandwidth 1kHz, \n')
printf('AvdB = %.1f dB \n',AvdB3)
