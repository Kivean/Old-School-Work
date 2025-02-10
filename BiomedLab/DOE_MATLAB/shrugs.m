%WHAT I NEED:
%range1 through range4 as the ranges for the data for each of the 4
%channels
%butterworth filter parameters
%samplerate
%window size
%standard deviations for emgon

Fs = 10000;
Ws = 5;
Sd = 3;

num = 2; %number of calibration files

range1 = 'A:A';
range2 = 'B:B';

%get data from spreadsheet
averages = xlsread('baseline.xslx', 'A1:E1');
stdevs = xlsread('baseline.xslx', 'A2:E2');

%preallocate arrays
shrug1 = [];
shrug2 = [];

%get data from excel docs
for k = 1:num
    name = strcat('shrug', int2str(k), '.xlsx');
    if k == 1
        shrug1 = abs(detrend(xlsread(name, range1)));
    else
        shrug1 = [shrug1; abs(detrend(xlsread(name, range1)))];
    end
end

for k = 1:num
    name = strcat('shrug', int2str(k), '.xlsx');
    if k == 1
        shrug1 = abs(detrend(xlsread(name, range1)));
    else
        shrug1 = [shrug1; abs(detrend(xlsread(name, range1)))];
    end
end

%get starting values for peak alignment, and align them so the start is on
%the 10th sample
delay1 = emgon(shrug1(:, 1), Fs, Ws, Sd, averages(1), stdevs(1));
shrug1(:, 1) = shrug1(delay1 - 10: end, 1);
delay2 = emgon(shrug2(:, 1), Fs, Ws, Sd, averages(2), stdevs(2));
shrug2(:, 1) = shrug2(delay2 - 10: end, 1);

%match peaks using emgon
for k = 2:num
    delay = emgon(shrug1(:, k), Fs, Ws, Sd, averages(1), stdevs(1));
    if delay1 > delay
        lag = delay1 - delay;
        shrug1(:, k) = [(ones(lag, 1) * averages(1));shrug1(:, k)];
    elseif delay1 < delay
        lag = delay1 - delay;
        shrug1(:, k) = shrug1(lag:end, k);
    end
end

for k = 2:num
    delay = emgon(shrug2(:, k), Fs, Ws, Sd, averages(2), stdevs(2));
    if delay2 > delay
        lag = delay2 - delay;
        shrug2(:, k) = [(ones(lag, 1) * averages(2));shrug2(:, k)];
    elseif delay2 < delay
        lag = delay2 - delay;
        shrug2(:, k) = shrug2(lag:end, k);
    end
end

%pad datasets to correct size
for k = 1:num
    shrug1(:, k) = shrug1(1:4000, k);
end

for k = 1:num
    shrug2(:, k) = shrug2(1:4000, k);
end

%create average curves
avg1 = mean(shrug1, 2);
avg2 = mean(shrug2, 2);

%write everything to excel
xlswrite('baseshrug.xslx', [avg1, avg2]);


