//Chapter 22, Example 22.9
clc
//Rectangle to Polar Conversion
function [r,th] = rect2polar(x,y)
    r=sqrt((x**2)+(y**2))
    if x==0 then
        th=-90
    elseif x<0 then 
        th=atand(y/x)+180
    else
        th=atand(y/x)
      if (x<0) & (y<0) then
            th=th-180
        end
    end
endfunction

//Polar to Rectangle conversion
function [r,i]= polar2rect(x,y)
    r=(x*cosd(y))/1000
    i=(x*sind(y))/1000
endfunction

//addition
function[c1,c2]=addition(x1,x2,y1,y2)
    c1 = x1+x2
    c2 = y1+y2
    endfunction
//addition
function[c1,c2]=addition1(x1,x2,x3,y1,y2,y3)
    c1 = x1+x2+x3
    c2 = y1+y2+y3
    endfunction

function[c1,c2]=subtraction(x1,x2,x3,y1,y2,y3)
    c1 = x1-x2-x3
    c2 = y1-y2-y3
    endfunction

function[c1,c2]=subtraction1(x1,x2,y1,y2)
    c1 = x1-x2
        c2 = y1-y2
    endfunction
   //multiplication
function [r,s] = voltdivider(x1,x2,y1,y2)
    r=x1*x2
    s=y1+y2
endfunction
   //multiplication
function [r,s] = voltdivider1(x1,x2,y1,y2)
    r=x1*x2
    s=y1-y2
endfunction
//division
function[q,x]=division(x1,x2,y1,y2)
       q=x1/x2
       x=y1-y2
   endfunction
   
function[c1,c2]=subtraction1(x1,x2,y1,y2)
    c1 = x1-x2
    c2 = y1-y2
    endfunction
//Variable Declaration
eca = 200                   //real value
ecao = 120                      //angle in degree
z2 = 200                   //real value
z2o = 0                      //angle in degree
ebc = 200                   //real value
ebco = -120                      //angle in degree
z1 = 166                   //real value
z1o = -90                      //angle in degree
z3 = 200                   //real value
z3o = 0                      //angle in degree
eab = 200                   //real value
eabo = 0                      //angle in degree
 
//Calculation
[a,b]=voltdivider(eca,z2,ecao,z2o)          //EcaxZ2
[aa,bb]=voltdivider1(ebc,z1,ebco,z1o)        //Ebcxz1
[e,f]=polar2rect(a,b)                       //function of conversion
[ee,ff]=polar2rect(aa,bb)                       //function of conversion
[ac,bc]=addition(e,ee,f,ff)              //function of addiion
[ad,bd]=rect2polar(ac,bc)                //num  
[c,d]=voltdivider(z1,z2,z1o,z2o)           //z1xz2
[ca,da]=voltdivider(z1,z3,z1o,z3o)         //z1xz3
[cb,db]=voltdivider(z2,z3,z2o,z3o)         //z2xz3
[cc,dd]=polar2rect(c,d)                       //function of conversion
[ce,de]=polar2rect(ca,da)                       //function of conversion
[cf,df]=polar2rect(cb,db)                       //function of conversion
[cg,dg]=addition1(cc,ce,cf,dd,de,df)     //function of addition
[ci,di]=rect2polar(cg,dg)                       //function of conversion
[ch,dh]=division(ad,ci,bd,di)      //function of division
[i,j]=voltdivider(eab,z3,eabo,z3o)       //function of multiplication
[ia,ja]=polar2rect(i,j)                       //function of conversion
[ic,jc]=voltdivider(ebc,z1,ebco,z1o)       //function of multiplication
[id,jd]=polar2rect(ic,jc)                       //function of conversion
[ib,jb]=subtraction1(id,ia,jd,ja)        //function of subtraction
[ie,je]=rect2polar(ib,jb)                   //num
[if,jf]=division(ie,ci,je,di)      //function of division
    
//Results
printf("Icn = %.2f A < %.2f degree \n",ch,dh)
printf("Ibn = %.2f A < %.2f degree \n",if,jf)
