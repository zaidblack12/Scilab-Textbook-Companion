//Chapter 24, Example 24.2
clc
//Initialisation
vb=0           //voltage from graph
tilt=0          //from graph
div=4             //amplitude in div
perdiv=10          //mV per div
div1=3.2            //division
perdiv1=5           //microsec per div
div2=0.4            //division
div3=0.8            //division



//Calculation
amp=div*perdiv             //amplitude
tp=div1*perdiv1             //from graph 24.9
tr=div2*perdiv1             //from graph 24.9
tf=div3*perdiv1             //from graph 24.9

//Result
printf("(a) Positive-going \n")      //from graph
printf("(b) Vb = %d V\n",vb)
printf("(c) tilt = %d percent \n",tilt)
printf("(d) amplitude = %d mV \n",amp)
printf("(e) tp = %d us \n",tp)
printf("(f) tr = %d us \n",tr)
printf("    tf = %d us \n",tf)
