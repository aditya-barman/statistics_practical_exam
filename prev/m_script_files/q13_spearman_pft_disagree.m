% NAME: ADITYA BARMAN
% ROLL: 002320601024
% PROBLEM 13. Spearman's Rank Correlation with Perfect disagreement


clc, clearvars, close all

math_x = [43 77 64 96 48 35 86 71];
beng_y = [79 49 65 36 68 82 41 50];
math_x_cp = math_x;
beng_y_cp = beng_y;
n = length(math_x);

R_x = zeros(1, n);
R_y = zeros(1, n);

for i = 1:n
    [valx, idx] = max(math_x);
    math_x(idx) = -Inf;
    R_x(idx) = i;

    [valy, idx] = max(beng_y);
    beng_y(idx) = -Inf;
    R_y(idx) = i;
end

d_sq = (R_x - R_y) .^ 2;
d_sq_sum = sum(d_sq);

sp_num = 6 * d_sq_sum;
sp_denom = n * ((n ^ 2) - 1);

sp = 1 - (sp_num / sp_denom);
table_t = zeros(8,5);
table_t(1:8, 1) = math_x_cp;
table_t(1:8, 2) = beng_y_cp;
table_t(1:8, 3) = R_x;
table_t(1:8, 4) = R_y;
table_t(1:8, 5) = d_sq;
disp(table_t)
fprintf('The Spearman Rank Correlation is %.4f\n', sp);



% ================= OUTPUT =================

%    43    79     7     2    25
%    77    49     3     6     9
%    64    65     5     4     1
%    96    36     1     8    49
%    48    68     6     3     9
%    35    82     8     1    49
%    86    41     2     7    25
%    71    50     4     5     1

% The Spearman Rank Correlation is -1.0000


% ==========================================
