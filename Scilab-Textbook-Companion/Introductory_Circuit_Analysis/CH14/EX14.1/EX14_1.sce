//Chapter 14, Example 14.1
clc
//Variable Declaration
vm = 100                //voltage magnitude of (a)
r = 10                  //resistance in ohms
vm1 = 25                //voltage magnitude of (b)


//Calculation
i = vm/r               //current of (a)
i1 = vm1/r             //current of (b)

//Results
printf("a. i = %dsin377t \n",i)
printf("b. i = %.1fsin(377t+60dgree) \n",i1)
