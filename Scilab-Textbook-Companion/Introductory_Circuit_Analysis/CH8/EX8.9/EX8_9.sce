//Chapter 8, Example 8.9
clc
//Variable Declaration

//three equations substituting the coefficients to variables
i11=2
i12=0
i13=4
i1=2

i21=0
i22=1
i23=4
i2=6

i31=1
i32=1
i33=-1
i3=0

//Calculation

//for I1
d=[i11 i12 i13;i21 i22 i23;i31 i32 i33]
di1=[i1 i12 i13;i2 i22 i23;i3 i32 i33]
ia1=det(di1)/det(d)

//for I2
di2=[i11 i1 i13 ; i21 i2 i23 ; i31 i3 i33]
ia2=det(di2)/det(d)

//for I3
di3=[i11 i12 i1 ; i21 i22 i2 ; i31 i32 i3]
ia3=det(di3)/det(d)

//Results
printf('I1 = %d A \n',ia1)
printf('I2 = %d A \n',ia2)
printf('I3 = %d A \n',ia3)
