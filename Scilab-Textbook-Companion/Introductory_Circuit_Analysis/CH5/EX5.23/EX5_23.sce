//Chapter 5, Example 5.23
clc
//Variable Declaration
vnl  = 120                   //voltage with no load
vfl = 100                    //voltage with load

//Calculation
vr = ((vnl-vfl)/vfl)*100     //voltage regulation in percent
//Results
printf("VR = %d percent",vr)
