%corr_coef = 

clear, clc

x = [56, 42, 72, 36, 63, 47, 55, 49, 38, 42, 68, 60];
y = [147, 125, 160, 118, 149, 128, 150, 145, 115, 140, 152, 155];

n = length(x);

xy = x .* y;
x_sq = x .^ 2;
y_sq = y .^ 2;

sum_x = 0;
sum_y = 0;
sum_xy = 0;
sum_x_sq = 0;
sum_y_sq = 0;

for i = 1 : n
    sum_x = sum_x + x(i);
    sum_y = sum_y + y(i);
    sum_xy = sum_xy + xy(i);
    sum_x_sq = sum_x_sq + x_sq(i);
    sum_y_sq = sum_y_sq + y_sq(i);
end

corr_coeff_num = (n * sum_xy) - (sum_x * sum_y);
corr_coeff_denom = (sqrt(n * sum_x_sq - sum_x ^ 2)) * sqrt(n * sum_y_sq - sum_y ^ 2);
corr_coeff = corr_coeff_num / corr_coeff_denom;

fprintf('The correlation coefficient between x and y is: %.4f\n', corr_coeff);