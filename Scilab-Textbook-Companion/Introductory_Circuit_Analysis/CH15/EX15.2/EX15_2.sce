//Chapter 15, Example 15.2
clc
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
x=4                             //amplitude
y=30                            //in degrees
r=2                            //in ohms

//Calculation
[a,b]=time2phasor(x,y)
c= a*r
[d,e]=phasor2time(c,y)

//graph
x1 = -5 : 1 : 20                     //time in seocnds
v = d*sind((377*x1)+e)               //voltage
ip = x*sind((377*x1)+e)              //current in ampere
plot(x1, v)
plot(x1, ip)
xlabel("t")
ylabel("i V")
//Results
printf("v = %.1f sin(wt + %d degree)", d,e)
