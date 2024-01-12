% NAME: ADITYA BARMAN
% ROLL: 002320601024
% PROBLEM 12. Spearman's Rank Correlation with Perfect agreement


clc, clearvars, close all

math_x = [43 77 64 96 48 35 86 71];
math_x_cp = math_x;
stat_y = [41 68 50 82 49 36 79 65];
stat_y_cp = stat_y;
n = length(math_x);

R_x = zeros(1, n);
R_y = zeros(1, n);

for i = 1:n
    [valx, idx] = max(math_x);
    math_x(idx) = -Inf;
    R_x(idx) = i;

    [valy, idx] = max(stat_y);
    stat_y(idx) = -Inf;
    R_y(idx) = i;
end

d_sq = (R_x - R_y) .^ 2;
d_sq_sum = sum(d_sq);

sp_num = 6 * d_sq_sum;
sp_denom = n * ((n ^ 2) - 1);

sp = 1 - (sp_num / sp_denom);

table_t = zeros(8,5);
table_t(1:8, 1) = math_x_cp;
table_t(1:8, 2) = stat_y_cp;
table_t(1:8, 3) = R_x;
table_t(1:8, 4) = R_y;
table_t(1:8, 5) = d_sq;
disp(table_t)
fprintf('The Spearman Rank Correlation is %.4f\n', sp);



% ================= OUTPUT ================

%    43    41     7     7     0
%    77    68     3     3     0
%    64    50     5     5     0
%    96    82     1     1     0
%    48    49     6     6     0
%    35    36     8     8     0
%    86    79     2     2     0
%    71    65     4     4     0

% The Spearman Rank Correlation is 1.0000


% =========================================
