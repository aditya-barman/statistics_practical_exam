% NAME: ADITYA BARMAN
% ROLL: 002320601024
% PROBLEM 8. Correlation with Frequency


clc, clearvars, close all

n = 100;
f_vals = [0 0 0 2 4 4
0 0 1 4 6 5
0 0 5 10 8 1
1 4 9 5 2 0
3 6 6 2 0 0
3 5 4 0 0 0];

% initializing upper and lower bounds for x & y
up_bd_x = [49 59 69 79 89 99];
up_bd_y = [99 89 79 69 59 49];
lw_bd_x = [40 50 60 70 80 90];
lw_bd_y = [90 80 70 60 50 40];

% initialiazing midpts and assumed means (same for x & y)
midpts_x = (up_bd_x + lw_bd_x) / 2;
midpts_y = (up_bd_y + lw_bd_y) / 2;
mean_asmd_xy = 74.5;
% obtaining factor from subtraction from assumed mean
diff_factor = 10;

% calculating u & v vals
u_vals = zeros(1, 6);

for i = 1:6
    u_vals(i) = ((midpts_x(i) - mean_asmd_xy) / diff_factor);
end

v_vals = u_vals(end:-1:1);

% initializing a 6x6 zero matrix to store fuv values
fuv = zeros(6, 6);
% following loop traverses through each cell and stores the required value
for j = 1:6
    for k = 1:6
        fuv(j, k) = f_vals(j, k) * v_vals(j) * u_vals(k);
    end
end


% initializing required matrices
% for v
f_v = [10 16 24 21 17 12]; % given
fv = zeros(1, 6);
fv_sq = zeros(1, 6);
f_uv = 0;

%for u
f_u = [7 15 25 23 20 10]; % given
fu = zeros(1, 6);
fu_sq = zeros(1, 6);

% calculating fu, fv, fu^2, fv^2
for a = 1:6
    fv(a) = f_v(a) .* v_vals(a);
    fv_sq(a) = f_v(a) .* (v_vals(a)^2);
    fu(a) = f_u(a) .* u_vals(a);
    fu_sq(a) = f_u(a) .* (u_vals(a)^2);
end

% calculating f_uv
for m = 1:36
    f_uv = f_uv + fuv(m);
end
% calculating respective sums
fv_sum = 0;
fv_sq_sum = 0;
fu_sum = 0;
fu_sq_sum = 0;

for d = 1:6
    fv_sum =fv_sum + fv(d);
    fv_sq_sum =fv_sq_sum + fv_sq(d);
    fu_sum =fu_sum + fu(d);
    fu_sq_sum =fu_sq_sum + fu_sq(d);
end

% calculating square of summation of fu & fv respectively
fu_sum_sq = fu_sum ^ 2;
fv_sum_sq = fv_sum ^ 2;

% calculating correlation coefficient between x & y
corr_coeff_num = (n*f_uv) - (fu_sum*fv_sum);
corr_coeff_denom = (sqrt((n*fu_sq_sum)-fu_sum_sq))*(sqrt((n*fv_sq_sum)-fv_sum_sq));
corr_coeff = corr_coeff_num / corr_coeff_denom;

fprintf('Correlation coefficient between the marks in Mathematics and the marks in Physics is: %.4f\n', corr_coeff);

% ====================== OUTPUT ==============================

% Correlation coefficient between the marks in Mathematics and the marks in Physics is: 0.7686

% ============================================================