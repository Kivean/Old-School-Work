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
lupdo1 = [];
lupdo2 = [];
lupdo3 = [];
lupdo4 = [];

%get data from excel docs
for k = 1:5
    name = strcat('lupdo', int2str(k), '.xlsx');
    lupdo1 = [lupdo1, abs(detrend(xlsread(name, range1)))];
end

for k = 1:5
    name = strcat('lupdo', int2str(k), '.xlsx');
    lupdo2 = [lupdo2, abs(detrend(xlsread(name, range2)))];
end

for k = 1:5
    name = strcat('llean', int2str(k), '.xlsx');
    lupdo3 = [lupdo3, abs(detrend(xlsread(name, range3)))];
end

for k = 1:5
    name = strcat('lupdo', int2str(k), '.xlsx');
    lupdo4 = [lupdo4, abs(detrend(xlsread(name, range4)))];
end

%get starting values for peak alignment, and align them so the start is on
%the 10th sample
delay1 = emgon(lupdo1(:, 1), Fs, Ws, Sd, averages(1), stdevs(1));
lupdo1(:, 1) = lupdo1(delay1 - 10: end, 1);
delay2 = emgon(lupdo2(:, 1), Fs, Ws, Sd, averages(2), stdevs(2));
lupdo2(:, 1) = lupdo2(delay2 - 10: end, 1);
delay3 = emgon(lupdo3(:, 1), Fs, Ws, Sd, averages(3), stdevs(3));
lupdo3(:, 1) = lupdo3(delay3 - 10: end, 1);
delay4 = emgon(lupdo4(:, 1), Fs, Ws, Sd, averages(4), stdevs(4));
lupdo4(:, 1) = lupdo4(delay4 - 10: end, 1);

%match peaks using emgon
for k = 2:5
    delay = emgon(lupdo1(:, k), Fs, Ws, Sd, averages(1), stdevs(1));
    if delay1 > delay
        lag = delay1 - delay;
        lupdo1(:, k) = [(ones(lag, 1) * averages(1));lupdo1(:, k)];
    elseif delay1 < delay
        lag = delay1 - delay;
        lupdo1(:, k) = lupdo1(lag:end, k);
    end
end

for k = 2:5
    delay = emgon(lupdo2(:, k), Fs, Ws, Sd, averages(2), stdevs(2));
    if delay2 > delay
        lag = delay2 - delay;
        lupdo2(:, k) = [(ones(lag, 1) * averages(2));lupdo2(:, k)];
    elseif delay2 < delay
        lag = delay2 - delay;
        lupdo2(:, k) = lupdo2(lag:end, k);
    end
end

for k = 2:5
    delay = emgon(lupdo3(:, k), Fs, Ws, Sd, averages(3), stdevs(3));
    if delay3 > delay
        lag = delay3 - delay;
        lupdo3(:, k) = [(ones(lag, 1) * averages(3));lupdo3(:, k)];
    elseif delay3 < delay
        lag = delay3 - delay;
        lupdo3(:, k) = lupdo3(lag:end, k);
    end
end

for k = 2:5
    delay = emgon(lupdo4(:, k), Fs, Ws, Sd, averages(4), stdevs(4));
    if delay4 > delay
        lag = delay4 - delay;
        lupdo4(:, k) = [(ones(lag, 1) * averages(4));lupdo4(:, k)];
    elseif delay4 < delay
        lag = delay4 - delay;
        lupdo4(:, k) = lupdo4(lag:end, k);
    end
end

%pad datasets to correct size
for k = 1:5
    lupdo1(:, k) = [lupdo1(:, k);(ones(range - length(lupdo1(:, k))) * averages(1))];
end

for k = 1:5
    lupdo2(:, k) = [lupdo2(:, k);(ones(range - length(lupdo2(:, k))) * averages(2))];
end

for k = 1:5
    lupdo3(:, k) = [lupdo3(:, k);(ones(range - length(lupdo3(:, k))) * averages(3))];
end

for k = 1:5
    lupdo4(:, k) = [lupdo4(:, k);(ones(range - length(lupdo4(:, k))) * averages(4))];
end

%create average curves
avg1 = mean(lupdo1, 2);
avg2 = mean(lupdo2, 2);
avg3 = mean(lupdo3, 2);
avg4 = mean(lupdo4, 2);

%write everything to excel
xlswrite('baselupdo.xslx', [avg1, avg2, avg3, avg4]);


