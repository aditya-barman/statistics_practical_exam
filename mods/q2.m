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

for i = 1:length(f)
    f_total = f_total + f(i);
    f_m_total = f_m_total + f_m(i);
end

mean_value = (f_m_total/f_total);

fprintf('The age of persons and number of persons is given below\n\n');
% Print the table headers
fprintf('%-10s %-20s\n', 'Age of Persons', 'Number of Persons');

% Print the table values
for i = 1:length(lw_bd)
    fprintf('%-2d - %-2d\t\t\t%-10d\n', lw_bd(i), up_bd(i), f(i));
end

fprintf('\nMean of the data is: %.4f\n', mean_value);


% =========================== OUTPUT ========================

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
% Mean of the data is: 31.3500

% ============================================================