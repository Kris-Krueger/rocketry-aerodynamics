%% Draft
clc
clear
%% Variables

S = 2; % S = Stability Margin
Cg = []; % Cg = Center of Gravity (unknown)
Cp = []; % Cp = Center of Pressure (unknown)
phi = 0.0248; % phi = Diameter of the Rocket (m)
sa_b = 3.8485; % sa_body = Surface area of the body (m^2)
sa_c = 0.7507; % sa_cone = Surface area of the cone (m^2)
sa_f = []; % sa_fins = Surface area of the fins (unknown)
% SA_Total = Surface Area of All the Components (unknown)
d_b = 0.17; % d_b = Distance of the body center of gravity from the reference point (m)
d_c = 0.04; % d_c = Distance of the cone center of gravity from the reference point (m)
d_f = 0.28; % d_f = Distance of the fins center of gravity from the reference point (this is approximated) (m)
w_b = 0.056448; % w_b = Weight of the fins (N)
w_c = 0.045962; % w_c = Weight of the fins (N)
w_f = []; % w_f = Weight of the fins (unknown)
fins = 4; % fins = Number of fins
CAfin = []; % CA_1fin = Cross-sectional area of a single fin

%% Equations

%This only cycles through integers at the moment
for i = 1:10
    Cp(end+1) = i;
    Cg(end+1) = (2*phi+Cp(i));
    sa_f(end+1) = ((sa_b*d_b)+(sa_c*d_c)-(Cp(i)*d_b)-(Cp(i)*d_c))/(Cp(i)-d_f);
    w_f(end+1) = ((w_b*d_b)+(w_c*d_c)-(Cg(i)*d_b)-(Cg(i)*d_c))/(Cg(i)-d_f);
    CAfin(end+1) = sa_f(i)/(fins*2);
end


