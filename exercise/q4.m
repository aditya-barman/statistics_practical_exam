clc, clearvars, close all

lw_bd = [19 24 29 34 39 44];
up_bd =[23 28 33 38 43 48];

x_i = [15 20 30 18 12 5];

m = (lw_bd + up_bd) / 2;

sum_x_i = 0;
sum_xi_m = 0;

for i = 1 : length(x_i)
    sum_x_i = sum_x_i + x_i(i);
    sum_xi_m = sum_xi_m + (x_i(i) * m(i));
end

x_bar = sum_xi_m/sum_x_i;

% need to calc variance

sum_x_i_m_x_bar_sq = 0;

for j = 1 : length(x_i)
    sum_x_i_m_x_bar_sq = sum_x_i_m_x_bar_sq + (x_i(j) * ((m(j) - x_bar)^2));
end

variance_val = sum_x_i_m_x_bar_sq/sum_x_i;
fprintf('%.4f', variance_val)