% Define the age categories' lower and upper bounds
lw_bd = [19, 24, 29, 34, 39, 44];
up_bd = [23, 28, 33, 38, 43, 48];

% Define the number of persons for each age category
f = [15, 20, 30, 18, 12, 5];

% Print the table headers
fprintf('%-10s %-20s\n', 'Age of Persons', 'Number of Persons');

% Print the table values
for i = 1:length(lw_bd)
    fprintf('%-2d - %-2d\t\t\t%-10d\n', lw_bd(i), up_bd(i), f(i));
end
