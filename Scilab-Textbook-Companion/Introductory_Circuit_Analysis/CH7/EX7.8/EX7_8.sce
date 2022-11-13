//Chapter 7, Example 7.8
clc
//Variable Declaration
r1 = 40*10^3                //resistance in ohms
r2 = 4*10^3                 //resistance in ohms
rc = 10*10^3                //resistance in ohms 'C'
re = 1*10^3                 //resistance in ohms 'E'
vcc = 22                    //power supply Vcc
vb = 2                      //base voltage
vbe = 0.7                   //base emitter voltage

//Calculation
v2 = vb
ve = v2-vbe                //applying KVL to lower loop
ie = ve/re                 //by ohm's law, in ampere
v1 = vcc-v2                //applying KVL to upper loop
ic = ie                     // in ampere
vc = vcc-(ie*rc)           //applying KVL , in voltaage
vbc = vb-vc                 //in voltaage
vce = vc-ve                 //in voltaage

//Results
printf("Ve = %.1f V \n",ve)
printf("Ie = %.1f mA \n",ie*1000)
printf("V1 = %d V \n",v1)
printf("Vbc = %d V \n",vbc)
printf("Vce = %.1f V",vce)
