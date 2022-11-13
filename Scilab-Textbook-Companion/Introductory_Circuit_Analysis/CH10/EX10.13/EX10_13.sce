//Chapter 10, Example 10.13
clc
//Variable Declaration
delv = 4                   //change in voltage
delt = 2*10^-3             //change in time (sec)
c = 2*10^-6                //capacitor in farad
delv1 = 0                  //change in voltage
delt1 = 6*10^-3            //change in time (sec)

//Calculation
ic = c*delv/(delt)           //current in amperes
ic1 = c*delv1/delt           //current in amperes
ic2 = -c*delv/delt1           //current in amperes

x1 = 0: 0.0009 : 0.002
x3 = 0.005 : 0.0009: 0.011

ic11=[ic ic ic]
ic12=[ic2 ic2 ic2 ic2 ic2 ic2 ic2]
plot(x1, ic11,'LineWidth', 2)
plot(x3, ic12)
a=gca(); // Handle on axes entity
a.x_location = "origin";
xlabel("t")
ylabel("ic (mA)")
xtitle('Average Current')



//Results
printf("a. ic = %d mA \n",ic*10^3)
printf("b. ic = %d \n",ic1)
printf("c. ic = %.2f mA \n",ic2*10^3)
