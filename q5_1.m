% NAME: ADITYA BARMAN
% ROLL: 002320601024
% PROBLEM 5. Co-variance without Frequency


clc, clearvars, close all

n_women = 12;
x_ages = [56, 42, 72, 36, 63, 47, 55, 49, 38, 42, 68, 60];
y_BP = [147, 125, 160, 118, 149, 128, 150, 145, 115, 140, 152, 155];

xy = x_ages .* y_BP;
covariance = n_women*sum(xy) - (sum(x_ages)*sum(y_BP));

% x_y = zeros(1, 12);
% x_ages_sum = 0;
% y_BP_sum = 0;
% xy_sum = 0;

% for i = 1:12
%     x_ages_sum = x_ages_sum + x_ages(i);
%     y_BP_sum = y_BP_sum + y_BP(i);
%     x_y(i) = (x_ages(i) * y_BP(i));
% end

% for j = 1:12
%     xy_sum = xy_sum + x_y(j);
% end

% x_mean = x_ages_sum / n_women;
% y_mean = y_BP_sum / n_women;

% covariance = (xy_sum - n_women * x_mean * y_mean) / n_women;

fprintf('Covariance between x and y: %.4f\n', covariance);


% ============== OUTPUT ===============

% Covariance between x and y: 147.0556

% =====================================