% NAME: ADITYA BARMAN
% ROLL: 002320601024
% PROBLEM 10. Regression of Y on X (with plot)


clc, clearvars, close all

X = [56 42 72 36 63 47 55 49 38 42 68 60];
Y = [147 125 160 118 149 128 150 145 115 140 152 155];

n = length(X);
X_sq = X .^ 2;
Y_sq = Y .^ 2;
XY = zeros(1, n);

for i = 1:n
    XY(i) = X(i) * Y(i);
end

X_sum = 0;
Y_sum = 0;
X_sq_sum = 0;
Y_sq_sum = 0;
XY_sum = 0;

for j = 1:n
    X_sum = X_sum + X(j);
    Y_sum = Y_sum + Y(j);
    X_sq_sum = X_sq_sum + X_sq(j);
    Y_sq_sum = Y_sq_sum + Y_sq(j);
    XY_sum = XY_sum + XY(j);
end

a_num = (n * XY_sum) - (X_sum * Y_sum);
a_denom = (n * X_sq_sum) - (X_sum ^ 2);

b_num = (Y_sum * X_sq_sum) - (X_sum * XY_sum);
b_denom = (n * X_sq_sum) - (X_sum ^ 2);

a_eqn = a_num / a_denom;
b_eqn = b_num / b_denom;

fprintf('The regression equation is Y = %.2fX + %.2f\n', a_eqn, b_eqn);

%
% Plotting the data points
scatter(X, Y, 'filled');
hold on;

% Plotting the regression line
x_line = min(X):0.01:max(X);
y_line = a_eqn * x_line + b_eqn;
plot(x_line, y_line, 'r');

% Formatting the plot
xlabel('X');
ylabel('Y');
title('Regression of Y on X');
legend('Data points', 'Regression line');
grid on;
hold off;



% ==================== OUTPUT =================

% The regression equation is Y = 1.14X + 80.78

% =============================================