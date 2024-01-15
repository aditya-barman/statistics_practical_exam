% NAME: ADITYA BARMAN
% ROLL: 002320601024
% PROBLEM 4. Variance with Frequency


clc, clearvars, close all

f = [8 2 10 5 3 1];
f_total = 0;
f_m_total = 0;

up_bd = [5 11 17 23 29 35];
lw_bd = [0 6 12 18 24 30];
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

fprintf('The age of persons and number of persons is given below\n\n');
% Print the table headers
fprintf('%-10s %-20s\n', 'Age of Persons', 'Number of Persons');

% Print the table values
for i = 1:length(lw_bd)
    fprintf('%-2d - %-2d\t\t\t%-10d\n', lw_bd(i), up_bd(i), f(i));
end

fprintf('\nVariance of the data is: %.4f\n', variance);


% ============================ OUTPUT =====================

% The age of persons and number of persons is given below
% 
% Age of Persons Number of Persons   
% 19 - 23			15        
% 24 - 28			20        
% 29 - 33			30        
% 34 - 38			18        
% 39 - 43			12        
% 44 - 48			5         
% 
% Variance of the data is: 47.6275

% ===========================================================