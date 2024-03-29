% NAME: ADITYA BARMAN
% ROLL: 002320601024
% PROBLEM 1. Mean without Frequency


clc, clearvars, close all

weights_pounds = [122, 173, 179, 176, 159, 175, 160, 102, 133
159, 176, 151, 115, 105, 72, 170, 128, 112
101, 123, 117, 93, 117, 99, 90, 113, 128
129, 134, 178, 105, 107, 147, 157, 155, 95
177, 98, 174, 135, 97, 168, 160, 144, 174];

matrix_length = size(weights_pounds);
length_weights_pounds = matrix_length(1) * matrix_length(2);
sum_wts_pds = 0;

for i = 1:matrix_length(1)
    for j = 1:matrix_length(2)
        sum_wts_pds = (sum_wts_pds + weights_pounds(i, j));
    end
end

fprintf('The weights of %d persons in pounds is given below\n\n', length_weights_pounds);
disp(weights_pounds)

mean_weight = (sum_wts_pds/length_weights_pounds);
fprintf('Mean of the data is: %.4f\n', mean_weight);


% ======================= OUTPUT ===========================

% The weights of 45 persons in pounds is given below

%    122   173   179   176   159   175   160   102   133
%    159   176   151   115   105    72   170   128   112
%    101   123   117    93   117    99    90   113   128
%    129   134   178   105   107   147   157   155    95
%    177    98   174   135    97   168   160   144   174

% Mean of the data is: 135.1556

% ===========================================================