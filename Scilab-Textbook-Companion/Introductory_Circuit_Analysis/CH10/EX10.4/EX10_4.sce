//Chapter 10, Example 10.4
clc
//Variable Declaration
c = 0.2*10^-6              //capacitance in farad
a = 0.3                    //area of plate in meter square
er = 6                     //permittivity
di = 200                   //dielectric strength

//Calculation
d = (8.85*er*a)/(10^12*c)           //find distance in micrometer
d1 = d*(39.371)*1000                //converting micrometer to mils
d2 = di*d1

//Results
printf("d = %.2f um \n",d*10^6)
printf("V = %.2f V \n",d2)
