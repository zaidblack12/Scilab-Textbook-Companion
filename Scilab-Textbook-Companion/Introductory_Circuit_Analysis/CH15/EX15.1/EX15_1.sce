//Chapter 15, Example 15.1
clc
funcprot(0)
//time to phasor
function[m,n]=time2phasor(x,y)
    m=0.707*x
    n=y
endfunction

//phasor to time domain
function[m,n]=phasor2time(x,y)
    m=sqrt(2)*x
    n=y
endfunction
//Variable Declaration
x=100                                //amplitude
y=0
r = 5                                //resistor
y1=0
//Calculation
[a,b]=time2phasor(x,y)
i= a/r
[c]=phasor2time(i,y1)

//graph
x1 = 0 : 1 : 1000                      //time in seconds
v = x*sin(377*x1)                     //in voltage
ip = i*sin(377*x1)                   //current in amperes
plot(x1, v)
plot(x1, ip)
xlabel("t")
ylabel("i V")

//Results
printf("i = %.1f sin wt", c)
