//Chapter 15, Example 15.6
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
x=6                              //amplitude
y=-60                            //in degrees
r=0.5                            //in ohms
d=-90                            //in degrees

//Calculation
[a,b]=time2phasor(x,y)
c= a*r
i=b+d
[f,e]=phasor2time(c,i)


//graph
x1 = 0 : 1 : 500                     //time in seocnds
v = f*sind((x1)+(d+y))               //voltage
ip = x*sind((x1)+ y)              //current in ampere
plot(x1, v)
plot(x1, ip)
xlabel("t")
ylabel("i V")


//Results
printf("v = %.1f sin(wt%d degree)", f,e)
