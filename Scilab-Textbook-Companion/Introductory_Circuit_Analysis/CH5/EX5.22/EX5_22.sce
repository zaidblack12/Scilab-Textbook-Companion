//Chapter 5, Example 5.22
clc
//Variable Declaration
e = 30                     //supply voltage
rint = 2                   //internal resistance
rl = 13                    //load resistance
vnl = 30                   //voltage with no load


//Calculation
il = e/(rint+rl)         //load current in ampere
vl = vnl-il*rint         //load voltage in volts
plost = il*il*rint       //power lost in Watt

//Results
printf("Vl = %d V \n",vl)
printf("Plost = %d W",plost)
