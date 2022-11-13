//Chapter 5, Example 5.21
clc
//Variable Declaration
vnl = 40                  //voltage with no load
il = 77*10^-3             //load current in ampere
rl = 0.5*10^3            //load resistor in ohm
  
//Calculation
rint = (vnl/il)-rl     //internal resistance in ohm

//Results
printf("Rint = %.2f ohm",rint)
