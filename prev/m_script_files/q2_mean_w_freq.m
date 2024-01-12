% NAME: ADITYA BARMAN
% ROLL: 002320601024
% PROBLEM 2. Mean with Frequency


clc, clearvars, close all

f = [15, 20, 30, 18, 12, 5];
f_total = 0;
f_m_total = 0;

up_bd = [23, 28, 33, 38, 43, 48];
lw_bd = [19, 24, 29, 34, 39, 44];
midpts = ((up_bd + lw_bd)/2);
f_m = f .* midpts;

for i = 1:6
    f_total = f_total + f(i);
    f_m_total = f_m_total + f_m(i);
end

mean_value = (f_m_total/f_total);
fprintf('Mean of the data is: %.4f\n', mean_value);


% ============== OUTPUT =============

% Mean of the data is: 31.3500

% ===================================