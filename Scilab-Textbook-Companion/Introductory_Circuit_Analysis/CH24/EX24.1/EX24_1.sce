//Chapter 24, Example 24.1
clc
//Initialisation
t1=12           //time period in ms
t2=7            //time period in ms
v1=8           //voltage
v2=4           //voltage
v3=12           //voltage
v4=11           //voltage
vb=-4           //voltage from graph

//Calculation
tp=t1-t2           //time period in ms
vmax=v1+v2          //maximum amplitude voltage
v=(v3+v4)/2          //voltage
vp=((v3-v4)/v)*100          //tilt in percent

//Result
printf("(a) Positive-going \n")      //from graph
printf("(b) Vb = %d V\n",vb)
printf("(c) tp = %d ms \n",tp)
printf("(d) Vmax = %d V \n",vmax)
printf("(e) V (tilt in percentage) = %.3f percent",vp)
