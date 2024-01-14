% NAME: ADITYA BARMAN
% ROLL: 002320601024
% PROBLEM 3. Variance without Frequency


clc, clearvars, close all

weights_pounds = [122, 173, 179, 176, 159, 175, 160, 102, 133
159, 176, 151, 115, 105, 72, 170, 128, 112
101, 123, 117, 93, 117, 99, 90, 113, 128
129, 134, 178, 105, 107, 147, 157, 155, 95
177, 98, 174, 135, 97, 168, 160, 144, 174];

sum_wts_pds = 0;
matrix_length = size(weights_pounds);
length_weights_pounds = matrix_length(1) * matrix_length(2);

for i = 1:matrix_length(1)
    for j = 1:matrix_length(2)
        sum_wts_pds = (sum_wts_pds + weights_pounds(i, j));
    end
end

mean_weight = (sum_wts_pds/length_weights_pounds);

sum_dist_mean = 0;

for x = 1:matrix_length(1)
    for y = 1:matrix_length(2)
        dist_mean = ((weights_pounds(x, y) - mean_weight)^2);
        sum_dist_mean = (sum_dist_mean + dist_mean);
    end
end


fprintf('The weights of %d persons in pounds is given below\n\n', length_weights_pounds);
disp(weights_pounds)

variance = (sum_dist_mean/length_weights_pounds);
fprintf('Variance of the data is: %.4f\n', variance);


% ======================= OUTPUT ========================

% The weights of 45 persons in pounds is given below
% 
%    122   173   179   176   159   175   160   102   133
%    159   176   151   115   105    72   170   128   112
%    101   123   117    93   117    99    90   113   128
%    129   134   178   105   107   147   157   155    95
%    177    98   174   135    97   168   160   144   174
% 
% Variance of the data is: 930.7980

% ========================================================