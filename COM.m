%% Center of Mass (COM) Calculation - Function

function [x,y,z] = COM(finsW,coneW,bodyW, finsD, coneD, bodyD)
x = 0;
y = 0;
z = finsW*finsD + coneW*coneD + bodyW*bodyD;
end