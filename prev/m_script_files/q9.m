% NAME: ADITYA BARMAN
% ROLL: 002320601024
% PROBLEM 9. Regression of X on Y (with plot)


clc, clearvars, close all

x = [56 42 72 36 63 47 55 49 38 42 68 60];
y = [147 125 160 118 149 128 150 145 115 140 152 155];
n = length(x);

sumx = 0;
sumy = 0;

for i = 1:n
    sumx = sumx + x(i);
    sumy = sumy + y(i);
end

sumxx = sum(x .^ 2);
sumyy = sum(y .^ 2);
sumxy = sum(x .* y);
mean_x = sumx / n;
mean_y = sumy / n;
Sx = n * (sumxy) - ((sumx) * (sumy));
Sy = n * (sumyy) - (sumy) ^ 2;
bxy = Sx / Sy;
x = mean_x + bxy * (y - mean_y);

fprintf('Equation of the given regression line of x on y is: \n');
fprintf('x-%f=%f(y-%f) \n',mean_x,bxy,mean_y);
plot(x, y, 'm-*')
title('REGRESSION LINE OF X ON Y')


% ==================== OUTPUT ========================

% Equation of the given regression line of x on y is: 
% x-52.333333=0.705678(y-140.333333)

% ====================================================