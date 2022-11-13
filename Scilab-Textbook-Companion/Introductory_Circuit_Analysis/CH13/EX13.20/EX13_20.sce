//Chapter 13, Example 13.20
clc
//Variable Declaration
pdc = 3.6                 //power in watt
vdc= 120                  //in volts


//Calculation
idc = pdc/vdc             //in milliampere
im = sqrt(2)*idc          //in milliampere
em = sqrt(2)*vdc           //in millivolts

//Results
printf("Idc = %d  mA \n",idc*10^3)
printf("Im = %.2f mA \n",im*10^3)
printf("Em = %.2f mA \n",em)
