//Chapter 15, Example 15.3
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
x=24                             //amplitude
y=0                            //in degrees
r=3                            //in ohms
d=90                            //in degrees
//Calculation
[a,b]=time2phasor(x,y)
c= a/r
i=d
[f,e]=phasor2time(c,i)

//graph
x1 = 0 : 10 : 500                     //time in seocnds
v = x*sind(x1)               //voltage
ip = f*sind((x1)-d)              //current in ampere
plot(x1, v)
plot(x1, ip)
xlabel("t")
ylabel("i V")
xtitle("Waveforms for Example 15.3")


//Results
printf("i = %.1f sin(wt - %d degree)", f,e)
