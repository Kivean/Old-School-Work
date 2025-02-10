%WHAT I NEED:
%range1 through range4 as the ranges for the data for each of the 4
%channels
%butterworth filter parameters
%samplerate
%window size
%standard deviations for emgon

%Fs = 
%Ws = 
%Sd = 

%range1 = 
%range2 = 
%range3 = 
%range4 = 

%[b,a]=butter(5,10/250,'low');

%get data from spreadsheet
averages = xlsread('baseline.xslx', 'A1:E1');
stdevs = xlsread('baseline.xslx', 'A2:E2');

%preallocate arrays
rlean1 = [];
rlean2 = [];
rlean3 = [];
rlean4 = [];

%get data from excel docs
for k = 1:5
    name = strcat('rlean', int2str(k), '.xlsx');
    rlean1 = [rlean1, abs(detrend(xlsread(name, range1)))];
end

for k = 1:5
    name = strcat('rlean', int2str(k), '.xlsx');
    rlean2 = [rlean2, abs(detrend(xlsread(name, range2)))];
end

for k = 1:5
    name = strcat('rlean', int2str(k), '.xlsx');
    rlean3 = [rlean3, abs(detrend(xlsread(name, range3)))];
end

for k = 1:5
    name = strcat('rlean', int2str(k), '.xlsx');
    rlean4 = [rlean4, abs(detrend(xlsread(name, range4)))];
end

%get starting values for peak alignment, and align them so the start is on
%the 10th sample
delay1 = emgon(rlean1(:, 1), Fs, Ws, Sd, averages(1), stdevs(1));
rlean1(:, 1) = rlean1(delay1 - 10: end, 1);
delay2 = emgon(rlean2(:, 1), Fs, Ws, Sd, averages(2), stdevs(2));
rlean2(:, 1) = rlean2(delay2 - 10: end, 1);
delay3 = emgon(rlean3(:, 1), Fs, Ws, Sd, averages(3), stdevs(3));
rlean3(:, 1) = rlean3(delay3 - 10: end, 1);
delay4 = emgon(rlean4(:, 1), Fs, Ws, Sd, averages(4), stdevs(4));
rlean4(:, 1) = rlean4(delay4 - 10: end, 1);

%match peaks using emgon
for k = 2:5
    delay = emgon(rlean1(:, k), Fs, Ws, Sd, averages(1), stdevs(1));
    if delay1 > delay
        lag = delay1 - delay;
        rlean1(:, k) = [(ones(lag, 1) * averages(1));rlean1(:, k)];
    elseif delay1 < delay
        lag = delay1 - delay;
        rlean1(:, k) = rlean1(lag:end, k);
    end
end

for k = 2:5
    delay = emgon(rlean2(:, k), Fs, Ws, Sd, averages(2), stdevs(2));
    if delay2 > delay
        lag = delay2 - delay;
        rlean2(:, k) = [(ones(lag, 1) * averages(2));rlean2(:, k)];
    elseif delay2 < delay
        lag = delay2 - delay;
        rlean2(:, k) = rlean2(lag:end, k);
    end
end

for k = 2:5
    delay = emgon(rlean3(:, k), Fs, Ws, Sd, averages(3), stdevs(3));
    if delay3 > delay
        lag = delay3 - delay;
        rlean3(:, k) = [(ones(lag, 1) * averages(3));rlean3(:, k)];
    elseif delay3 < delay
        lag = delay3 - delay;
        rlean3(:, k) = rlean3(lag:end, k);
    end
end

for k = 2:5
    delay = emgon(rlean4(:, k), Fs, Ws, Sd, averages(4), stdevs(4));
    if delay4 > delay
        lag = delay4 - delay;
        rlean4(:, k) = [(ones(lag, 1) * averages(4));rlean4(:, k)];
    elseif delay4 < delay
        lag = delay4 - delay;
        rlean4(:, k) = rlean4(lag:end, k);
    end
end

%pad datasets to correct size
for k = 1:5
    rlean1(:, k) = [rlean1(:, k);(ones(range - length(rlean1(:, k))) * averages(1))];
end

for k = 1:5
    rlean2(:, k) = [rlean2(:, k);(ones(range - length(rlean2(:, k))) * averages(2))];
end

for k = 1:5
    rlean3(:, k) = [rlean3(:, k);(ones(range - length(rlean3(:, k))) * averages(3))];
end

for k = 1:5
    rlean4(:, k) = [rlean4(:, k);(ones(range - length(rlean4(:, k))) * averages(4))];
end

%create average curves
avg1 = mean(rlean1, 2);
avg2 = mean(rlean2, 2);
avg3 = mean(rlean3, 2);
avg4 = mean(rlean4, 2);

%write everything to excel
xlswrite('baserlean.xslx', [avg1, avg2, avg3, avg4]);


