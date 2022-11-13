//Chapter 9, Example 9.14
clc
//Variable Declaration
rint1 = 2.5                     //resistance in ohms of dc generator
rint2 = 0.5                     //resistance in ohms of battery
rint3 = 40                      //resistance in ohms of laboratory
n = 0.75                        //efficiency in decimal form

//Calculation
rl1 = rint1                   //for the dc generator, in ohms
rl2 = rint2                   //for the battery, in ohms
rl3 = rint3                   //for the laboratory supply, in ohms
Rl1 = (n*rl1)/(1-n)           //RL dc gen. for efficiency, in ohms
Rl2 = (n*rl2)/(1-n)           //RL battery for efficiency, in ohms
Rl3 = (n*rl3)/(1-n)           //RL laboratory for efficiency, in ohms

//Results
printf("a. RL = %.1f ohm \n",rl1)
printf("   RL = %.1f ohm \n",rl2)
printf("   RL = %d ohm \n",rl3)
printf("b. RL = %.1f ohm \n",Rl1)
printf("   RL = %.1f ohm \n",Rl2)
printf("   RL = %d ohm \n",Rl3)
