%% Variable Names
% Cp = center of pressure = FIND
% Cg = center of gravity = FIND
% SAfin = fin surface area = 
% SAbody = body surface area = 
% SAcone = cone surface area =
% Dfin = fin distance from ref point = 
% Dbody = body idstance from ref point = 
% Dcone = cone distance from ref point = 
% SM = stability margin = 2
% Fn = fin number = CHOICE
% DiamR = Rocket Diameter = based on JAC # = CHOICE
% CAfin = cross sectional area of fin = FIND

%% Given Equations
% Cp = Cg - (2*DiamR)
% SAfin = ((SAbody*Dbody)-(Cp*Dfin))/(Cp - Dfins)
% CAfin = (SAfin/(Fn*2))

%% Example code
SAbody =  0.038485 ;
SAcone =  0.007507 ;
Dfin =  0.28 ;
Dbody =  0.17 ;
Dcone =  0.04 ;
SM = 2.5 ;
Fn = 4 ;
DiamR = 0.0248 ;
Cg = 0.243 ;

%Solving for Cp
Cp = Cg - (2*DiamR)

%Solving for SAfin
SAfin = ((SAbody*Dbody)-(Cp*Dfin))/(Cp - Dfin)

%Solving for CAfin 
CAfin = (SAfin/(Fn*2))



