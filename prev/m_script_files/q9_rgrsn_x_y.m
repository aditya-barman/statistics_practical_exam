% NAME: ADITYA BARMAN
% ROLL: 002320601024
% PROBLEM 9. Regression of X on Y (with plot)


clc, clearvars, close all

X = [56 42 72 36 63 47 55 49 38 42 68 60];
Y = [147 125 160 118 149 128 150 145 115 140 152 155];

n = length(Y);
Y_sq = Y .^ 2;
X_sq = X .^ 2;
YX = zeros(1, n);

for i = 1:n
    YX(i) = Y(i) * X(i);
end

Y_sum = 0;
X_sum = 0;
Y_sq_sum = 0;
X_sq_sum = 0;
YX_sum = 0;

for j = 1:n
    Y_sum = Y_sum + Y(j);
    X_sum = X_sum + X(j);
    Y_sq_sum = Y_sq_sum + Y_sq(j);
    X_sq_sum = X_sq_sum + X_sq(j);
    YX_sum = YX_sum + YX(j);
end

a_num = (n * YX_sum) - (Y_sum * X_sum);
a_denom = (n * Y_sq_sum) - (Y_sum ^ 2);

b_num = (X_sum * Y_sq_sum) - (Y_sum * YX_sum);
b_denom = (n * Y_sq_sum) - (Y_sum ^ 2);

a_eqn = a_num / a_denom;
b_eqn = b_num / b_denom;

fprintf('The regression equation is X = %.2fY + %.2f\n', a_eqn, b_eqn);

%
% Plotting the data points
scatter(Y, X, 'filled');
hold on;

% Plotting the regression line
y_line = min(Y):0.01:max(Y);
x_line = a_eqn * y_line + b_eqn;
plot(y_line, x_line, 'r');

% Formatting the plot
xlabel('Y');
ylabel('X');
title('Regression of X on Y');
legend('Data points', 'Regression line');
grid on;
hold off;



% ================== OUTPUT =====================

% The regression equation is X = 0.71Y + -46.70

% ===============================================