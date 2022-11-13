//Chapter 15, Example 15.17
clc
//Variable Declaration
rp = 8*10^3                  //R in kiloohms
xl = 9*10^3                  //Xl in kiloohms
xc = 4*10^3                  //Xc in kiloohms


//Calculation
xp = xl-xc                   //in kiloohms
rs = (rp*(xp*xp))/((xp*xp)+(rp*rp))    //in kiloohms
xs = ((rp*rp)*xp)/((xp*xp)+(rp*rp))    //in kiloohms

//Results
printf("Rs = %.3f kohm \n",rs/10^3)
printf("Xs = %.3f kohm ",xs/10^3)
