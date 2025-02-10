range1 = 'A:A';
range2 = 'B:B';

%preallocate arrays
base1 = [];
base2 = [];

num = 5; %number of calibration files

%get data from excel docs
for k = 1:num
    name = strcat('base', int2str(k), '.xlsx');
    if k == 1
        base1 = abs(detrend(xlsread(name, range1)));
    else
        base1 = [base1; abs(detrend(xlsread(name, range1)))];
    end
end

for k = 1:num
    name = strcat('base', int2str(k), '.xlsx');
    if k == 1
        base2 = abs(detrend(xlsread(name, range1)));
    else
        base2 = [base2; abs(detrend(xlsread(name, range1)))];
    end
end

base1 = base1(1:4000, :);
base2 = base2(1:4000, :);

%make baseline averages and stdev and write them to excel file
stdevs = [mean(std(base1)), mean(std(base2))];
averages = [mean(mean(base1)), mean(mean(base2))];
xlswrite('baseline.xlsx', [averages;stdevs]);



