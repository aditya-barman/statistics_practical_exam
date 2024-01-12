% NAME: ADITYA BARMAN
% ROLL: 002320601024
% PROBLEM 4. Variance with Frequency


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

midpt_x = zeros(1, 6);

for j = 1:6
    m_sub_x = (midpts(j) - mean_value);
    midpt_x(j) = m_sub_x;
end

midpt_x_sq = midpt_x .* midpt_x;
f_m_x = zeros(1, 6);

for k = 1:6
    f_m_x_val = f(k)*midpt_x_sq(k);
    f_m_x(k) = f_m_x_val;
end

f_m_x_total = 0;

for z = 1:6
    f_m_x_total = f_m_x_total + f_m_x(z);
end

variance = (f_m_x_total/f_total);
fprintf('Variance of the data is: %.4f\n', variance);


% ============== OUTPUT =============

% Variance of the data is: 47.6275

% ===================================