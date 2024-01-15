%q5 - covariance

clear, clc

x = [56, 42, 72, 36, 63, 47, 55, 49, 38, 42, 68, 60];
y = [147, 125, 160, 118, 149, 128, 150, 145, 115, 140, 152, 155];

n = length(x);

sum_x = 0;
sum_y = 0;

for i = 1 : n
    sum_x = sum_x + x(i);
    sum_y = sum_y + y(i);
end

mean_x = sum_x / n;
mean_y = sum_y / n;

xi_xbar = x - mean_x;
yi_ybar = y - mean_y;

xi_xbar_yi_ybar = xi_xbar .* yi_ybar;

sum_xi_xbar_yi_ybar = 0;

for j = 1 : n
    sum_xi_xbar_yi_ybar = sum_xi_xbar_yi_ybar + xi_xbar_yi_ybar(j);
end

cov_xy = sum_xi_xbar_yi_ybar / n;

fprintf('The covariance of x and y is: %.4f\n', cov_xy);

