% NAME: ADITYA BARMAN
% ROLL: 002320601024
% PROBLEM 7. Correlation without Frequency


clc, clearvars, close all

n_women = 12;
x_ages = [56, 42, 72, 36, 63, 47, 55, 49, 38, 42, 68, 60];
y_BP = [147, 125, 160, 118, 149, 128, 150, 145, 115, 140, 152, 155];

x_y = zeros(1, 12);
x_sq = zeros(1, 12);
y_sq = zeros(1, 12);

for i = 1:12
    x_y(i) = (x_ages(i) * y_BP(i));
    x_sq(i) = (x_ages(i) ^ 2);
    y_sq(i) = (y_BP(i) ^ 2);
end

x_ages_sum = 0;
y_BP_sum = 0;
x_y_sum = 0;
x_sq_sum = 0;
y_sq_sum = 0;

for j = 1:12
    x_ages_sum = x_ages_sum + x_ages(j);
    y_BP_sum = y_BP_sum + y_BP(j);
    x_y_sum = x_y_sum + x_y(j);
    x_sq_sum = x_sq_sum + x_sq(j);
    y_sq_sum = y_sq_sum + y_sq(j);
end

r_numerator = (n_women*(x_y_sum)) - (x_ages_sum * y_BP_sum);
r_denominator_1 = (n_women*x_sq_sum) - (x_ages_sum^2);
r_denominator_2 = (n_women*y_sq_sum) - (y_BP_sum^2);
r = r_denominator_1*r_denominator_2;
r = r^0.5;
r = r_numerator / r;

fprintf('Correlation coefficient between x and y: %.4f\n', r);


% ==================== OUTPUT =====================

% Correlation coefficient between x and y: 0.8961

% =================================================