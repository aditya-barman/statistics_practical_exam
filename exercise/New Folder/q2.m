clc, clearvars, close all

lw_bd = [19, 24, 29, 34, 39, 44];
up_bd = [23, 28, 33, 38, 43, 48];

x_i = [15, 20, 30, 18, 12, 5];

n = length(x_i);
midpts = (lw_bd + up_bd)/2;

x_i_midpts = x_i .* midpts;

x_i_midpts_sum = 0;
x_i_sum = 0;

for i = 1 : n
    x_i_midpts_sum = x_i_midpts_sum + x_i_midpts(i);
    x_i_sum = x_i_sum + x_i(i);
end

mean_val = x_i_midpts_sum / x_i_sum;

fprintf('The mean of the data is: %.4f\n', mean_val);