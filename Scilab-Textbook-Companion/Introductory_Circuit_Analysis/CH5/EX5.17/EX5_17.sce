//Chapter 5, Example 5.17
clc
//Variable Declaration
e1 = 10                     //supply voltage1
v1 = 4                       //voltage1
e2 = 20                     //supply voltage2
va = 10                     //voltage Va

//Calculation
vb = e1-v1                  //voltage Vb
vc = vb-e2                  //voltage Vc
vac = va-vc                 //voltage Vac

//Results
printf("Vb = %d V \n",vb)
printf("Vc = %d V \n",vc)
printf("Vac = %d V \n",vac)
