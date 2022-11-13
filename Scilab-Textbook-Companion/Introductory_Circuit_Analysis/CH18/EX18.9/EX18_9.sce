//Chapter 18, Example 18.8
clc

//Variable Declaration
zth = 2*10^3               //resistance in kiloohms
rs = 0.5*10^3              //resistance1 in kiloohms
rs1 = 2.3*10^3              //resistance2 in kiloohms
rl = 1*10^3              //resistance3 in kiloohms

//Calculation
rsa = rs+rs1             //total resistance in kiloohms
i1 = 1/rsa                //wrong answer in textbook
eth = -i1*zth            //in ohmEi
vl= (rl*eth)/((1*10^3)+(2*10^3))   //in Ei


//Results
printf("Zth = %d kohm \n",zth/10^3)
printf("Eth = %.2fEi \n",eth)
printf("VL = %.2fEi \n",vl)

