//Chapter 21, Example 21.2
clc
//Initialisation
ep=200                    //induced voltage
np=50                     //no of turns
f=60                      //frequency in hertz
es=2400                    //induced voltage

//Calculation
phim=ep/(4.44*np*f)            //in Wb/m
ns=(np*es)/ep                  //no of turns


//Result
printf("(a) Maximum Flux = %.2f mWb \n",phim*10**3)
printf("(b) Secondary turns Ns = %d turns",ns)
