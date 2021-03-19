%% This is a Test, DROP AND COVER!

clear variables
clc

%-----------%

x = -5:0.1:5;

% Calculations
%-----------%
% y = 2*sin(x) - 1;
% z = 1.5*cos(x) + 2;
[y,z] = Test_sincos(x);
%-----------%

figure; %New Graph!
hold on;
plot(x,y, 'r-o', 'LineWidth', 2);
plot(x,z, 'k-o', 'LineWidth', 2);
xlabel('X');
ylabel('Y and Z');
title('Plot of Sine and Cosine Functions');
legend('2sin(x) - 1','1.5cos(x) + 2');
box on;
legend('boxoff');
hold off;

