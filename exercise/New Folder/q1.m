clear, clc

wts_pds = [122, 173, 179, 176, 159, 175, 160, 102, 133;
    159, 176, 151, 115, 105, 72, 170, 128, 112;
    101, 123, 117, 93, 117, 99, 90, 113, 128;
    129, 134, 178, 105, 107, 147, 157, 155, 95;
    177, 98, 174, 135, 97, 168, 160, 144, 174];

n = 45;
[num_rows num_columns] = size(wts_pds);
sum_wts_pds = 0;

for i = 1 : num_rows
    for j = 1 : num_columns
        sum_wts_pds = sum_wts_pds + wts_pds(i, j);
    end
end

mean_val = sum_wts_pds / n;

fprintf('The weights of 45 persons in pounds is given below\n\n');
disp(wts_pds)

fprintf('The mean of the above data is: %.4f\n', mean_val);