% Mean with Frequency

clc, clearvars, close all

lower_bound = [19, 24, 29, 34, 39, 43];
upper_bound = [23, 28, 33, 28, 43, 48];

number_of_persons = [15, 20, 30, 18, 12, 5];

midpts = (lower_bound + upper_bound) / 2;

freqs_midpts = number_of_persons .* midpts;

sum_freq_midpts = 0;
sum_number_of_persons = 0;

for i = 1 : length(number_of_persons)
    sum_freq_midpts = sum_freq_midpts + freqs_midpts(i);
    sum_number_of_persons = sum_number_of_persons + number_of_persons(i);
end
mean_val = sum_freq_midpts / sum_number_of_persons;

fprintf('The mean of the data is: %.4f\n', mean_val);