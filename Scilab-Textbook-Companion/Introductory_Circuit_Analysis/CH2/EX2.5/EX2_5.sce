//Chapter 2, Example 2.5
clc
//Variable Declaration
a = 450*10^-3        //current in millampere
b = 600*10^-3        //current in millampere 
d = 45               //temperature in degree from graph 2.18.b
m = 60               //unit time in sec

//Calculation
life = (a/b)*m     //life in minutes

//Results 
printf("a. Life = %.d min \n",life)
printf("b. High temperature = %d degreeC",d)
