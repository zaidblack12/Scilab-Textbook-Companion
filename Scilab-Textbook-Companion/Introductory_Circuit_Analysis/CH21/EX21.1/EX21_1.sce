//Chapter 21, Example 21.1
clc
//Initialisation
k=0.6                          //coefficient of coupling
Lp=200*10**-3                  //in Henry
Ls=800*10**-3                  //in Henry
Np=50                           //no of turns in primary
phip=450*10**-3                  //in Wp/s
Ns=100                          //no of turns in primary
ip=0.2/10**-3                   //in Wp/s

//Calculation
M=k*sqrt(Lp*Ls)                 //Mutual Inductance
ep=Np*phip                    //induced voltage
es=k*Ns*phip                    //induced voltage
epi=Lp*ip                    //induced voltage
esi=M*ip                    //induced voltage

//Result
printf("(a) Mutual Inductance, M = %.3f mH \n",M*1000)
printf("(b) Induced Voltage, ep = %.1f V \n",ep)
printf("(c) Induced Voltage, es = %d V \n",es)
printf("(d) Induced Voltage, ep = %d V \n",epi)
printf("(e) Induced Voltage, es = %d V",esi)
