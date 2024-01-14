clc, clearvars, close all

weights_pounds = [122 173 179 176 159 175 160 102 133
159 176 151 115 105 72 170 128 112
101 123 117 93 117 99 90 113 128
129 134 178 105 107 147 157 155 95
177 98 174 135 97 168 160 144 174];

number_of_persons = size(weights_pounds);
number_of_persons = number_of_persons(1) * number_of_persons(2);

sum_weights_pounds = 0;

for i = 1 : number_of_persons
    sum_weights_pounds = sum_weights_pounds + weights_pounds(i);
end

mean_value = sum_weights_pounds / number_of_persons;

fprintf('The weights of 45 persons in pounds in given below:\n\n');
disp(weights_pounds);

fprintf('The mean of the above given data is: %.4f\n', mean_value);