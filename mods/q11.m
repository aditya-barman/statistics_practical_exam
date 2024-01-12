% NAME: ADITYA BARMAN
% ROLL: 002320601024
% PROBLEM 11. Spearman's Rank Correlation


clc, clearvars, close all

math_x = [43 77 64 96 48 35 86 71];
phys_y = [36 68 49 79 50 41 82 65];
math_x_cp = math_x;
phys_y_cp = phys_y;
n = length(math_x);

R_x = zeros(1, n);
R_y = zeros(1, n);

for i = 1:n
    [valx, idx] = max(math_x);
    math_x(idx) = -Inf;
    R_x(idx) = i;

    [valy, idx] = max(phys_y);
    phys_y(idx) = -Inf;
    R_y(idx) = i;
end

d_sq = (R_x - R_y) .^ 2;
d_sq_sum = sum(d_sq);

sp_num = 6 * d_sq_sum;
sp_denom = n * ((n ^ 2) - 1);

sp = 1 - (sp_num / sp_denom);
table_t = zeros(8,5);
table_t(1:8, 1) = math_x_cp;
table_t(1:8, 2) = phys_y_cp;
table_t(1:8, 3) = R_x;
table_t(1:8, 4) = R_y;
table_t(1:8, 5) = d_sq;

% Print the table headers
fprintf('%-10s %-10s %-10s %-10s %-10s\n', 'X', 'Y', 'R_x', 'R_y', 'd_sq');

% Print the table values
for i = 1:n
    fprintf('%-10d %-10d %-10d %-10d %-10d\n', table_t(i, 1), table_t(i, 2), table_t(i, 3), table_t(i, 4), table_t(i, 5));
end

fprintf('\nThe Spearman Rank Correlation is %.4f\n', sp);



% ====================== OUTPUT =========================


% X          Y          R_x        R_y        d_sq      
% 43         36         7          8          1         
% 77         68         3          3          0         
% 64         49         5          6          1         
% 96         79         1          2          1         
% 48         50         6          5          1         
% 35         41         8          7          1         
% 86         82         2          1          1         
% 71         65         4          4          0         

% The Spearman Rank Correlation is 0.9286


% =========================================================
