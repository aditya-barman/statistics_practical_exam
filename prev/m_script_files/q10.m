% NAME: ADITYA BARMAN
% ROLL: 002320601024
% PROBLEM 10. Regression of Y on X (with plot)


clc, clearvars, close all

x = [56 42 72 36 63 47 55 49 38 42 68 60];
y = [147 125 160 118 149 128 150 145 115 140 152 155];
n = length(x);

sumx = 0;
sumy = 0;

for i = 1:n
    sumx = sumx+x(i);
    sumy = sumy+y(i);
end

sumxx = sum(x .^ 2);
sumyy = sum(y .^ 2);
sumxy = sum(x .* y);
mean_x = sumx / n;
mean_y = sumy / n;
Sx = n * (sumxy) - ((sumx) * (sumy));
Sy = n * (sumxx) - (sumx) ^ 2;
byx = Sx / Sy;
y = mean_y + byx * (x-mean_x);

fprintf('Equation of the given regression line of y on x is: \n');
fprintf('y-%f=%f(x-%f) \n',mean_y,byx,mean_x);
plot(x,y,'m-*')
title('REGRESSION LINE OF Y ON X')


% ======================= OUTPUT =====================

% Equation of the given regression line of y on x is: 
% y-140.333333=1.138005(x-52.333333)

% ====================================================