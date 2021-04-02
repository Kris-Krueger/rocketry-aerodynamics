%% Variable Names
% Cp = center of pressure = FIND
% Cg = center of gravity = based on JAC #
% SAfin = fin surface area = FIND (m^2)
% SAbody = body surface area = 0.038485 m^2
% SAcone = cone surface area = 0.007507 m^2
% Dfin = fin distance from ref point = 0.28 m
% Dbody = body distance from ref point = 0.17 m 
% Dcone = cone distance from ref point = 0.04 m 
% SM = stability margin = based on JAC # 
% Fn = fin number = CHOICE
% DiamR = Rocket Diameter = 0.0248 m
% CAfin = cross sectional area of fin = FIND m^2

%% Given Equations
% Cp = Cg - (2*DiamR): Center of Pressure Equation
% SAfin = ((SAbody*Dbody)-(Cp*Dfin))/(Cp - Dfins) : Fin Surface Area
% CAfin = (SAfin/(Fn*2)) : Cross Sectional Fin Area

%% Example code

SAbody =  0.038485 ;
SAcone =  0.007507 ;
Dfin =  0.28 ;
Dbody =  0.17 ;
Dcone =  0.04 ;
SM = 2.5 ;
Fn = 4 ;
DiamR = 0.0248 ;
Cg = 0.19 ;

%Solving for Cp
Cp = Cg - (2*DiamR)

%Solving for SAfin
SAfin = ((SAbody*Dbody)-(Cp*Dfin))/(Cp - Dfin)

%Solving for CAfin 
CAfin = (SAfin/(Fn*2))



