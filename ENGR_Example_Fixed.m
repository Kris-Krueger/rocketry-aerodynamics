clc
clear

SAbody =  0.038485 ;
SAcone =  0.007507 ;
Dfin =  0.28 ;
Dbody =  0.18 ;
Dcone =  0.04 ;
SM = 2.5 ;
Fn = 4 ;
DiamR = 0.0248 ;
Cg = 0.188 ;

%%[Solve for Unknowns]
format short
%Solving for Cp
Cp = Cg + (SM * DiamR)

%Solving for SAfin
SAfin = (((SAbody*Dbody)+(SAcone*Dcone)-(Cp*Dfin)-(Cp*Dcone))/(Cp - Dfin))

%Solving for CAfin 
CAfin = (SAfin/(Fn*2))
