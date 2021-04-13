clc
clear

SAbody =  0.0385 ;
SAcone =  0.0075 ;
Dfin =  0.28 ;
Dbody =  0.20 ;
Dcone =  0.04 ;
Fn = 6 ;
DiamR = 0.03 ;
Cg = 0.2 ;

%%[Solve for Unknowns]
format short
%Solving for Cp
Cp = Cg - (2*DiamR)

%Solving for SAfin
SAfin = ((SAbody*Dbody)+(SAcone*Dcone)-(Cp*Dfin)-(Cp*Dcone))/(Cp - Dfin)

%Solving for CAfin 
CAfin = (SAfin/(Fn*2))
