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
rupdo1 = [];
rupdo2 = [];
rupdo3 = [];
rupdo4 = [];

%get data from excel docs
for k = 1:5
    name = strcat('rupdo', int2str(k), '.xlsx');
    rupdo1 = [rupdo1, abs(detrend(xlsread(name, range1)))];
end

for k = 1:5
    name = strcat('rupdo', int2str(k), '.xlsx');
    rupdo2 = [rupdo2, abs(detrend(xlsread(name, range2)))];
end

for k = 1:5
    name = strcat('rupdo', int2str(k), '.xlsx');
    rupdo3 = [rupdo3, abs(detrend(xlsread(name, range3)))];
end

for k = 1:5
    name = strcat('rupdo', int2str(k), '.xlsx');
    rupdo4 = [rupdo4, abs(detrend(xlsread(name, range4)))];
end

%get starting values for peak alignment, and align them so the start is on
%the 10th sample
delay1 = emgon(rupdo1(:, 1), Fs, Ws, Sd, averages(1), stdevs(1));
rupdo1(:, 1) = rupdo1(delay1 - 10: end, 1);
delay2 = emgon(rupdo2(:, 1), Fs, Ws, Sd, averages(2), stdevs(2));
rupdo2(:, 1) = rupdo2(delay2 - 10: end, 1);
delay3 = emgon(rupdo3(:, 1), Fs, Ws, Sd, averages(3), stdevs(3));
rupdo3(:, 1) = rupdo3(delay3 - 10: end, 1);
delay4 = emgon(rupdo4(:, 1), Fs, Ws, Sd, averages(4), stdevs(4));
rupdo4(:, 1) = rupdo4(delay4 - 10: end, 1);

%match peaks using emgon
for k = 2:5
    delay = emgon(rupdo1(:, k), Fs, Ws, Sd, averages(1), stdevs(1));
    if delay1 > delay
        lag = delay1 - delay;
        rupdo1(:, k) = [(ones(lag, 1) * averages(1));rupdo1(:, k)];
    elseif delay1 < delay
        lag = delay1 - delay;
        rupdo1(:, k) = rupdo1(lag:end, k);
    end
end

for k = 2:5
    delay = emgon(rupdo2(:, k), Fs, Ws, Sd, averages(2), stdevs(2));
    if delay2 > delay
        lag = delay2 - delay;
        rupdo2(:, k) = [(ones(lag, 1) * averages(2));rupdo2(:, k)];
    elseif delay2 < delay
        lag = delay2 - delay;
        rupdo2(:, k) = rupdo2(lag:end, k);
    end
end

for k = 2:5
    delay = emgon(rupdo3(:, k), Fs, Ws, Sd, averages(3), stdevs(3));
    if delay3 > delay
        lag = delay3 - delay;
        rupdo3(:, k) = [(ones(lag, 1) * averages(3));rupdo3(:, k)];
    elseif delay3 < delay
        lag = delay3 - delay;
        rupdo3(:, k) = rupdo3(lag:end, k);
    end
end

for k = 2:5
    delay = emgon(rupdo4(:, k), Fs, Ws, Sd, averages(4), stdevs(4));
    if delay4 > delay
        lag = delay4 - delay;
        rupdo4(:, k) = [(ones(lag, 1) * averages(4));rupdo4(:, k)];
    elseif delay4 < delay
        lag = delay4 - delay;
        rupdo4(:, k) = rupdo4(lag:end, k);
    end
end

%pad datasets to correct size
for k = 1:5
    rupdo1(:, k) = [rupdo1(:, k);(ones(range - length(rupdo1(:, k))) * averages(1))];
end

for k = 1:5
    rupdo2(:, k) = [rupdo2(:, k);(ones(range - length(rupdo2(:, k))) * averages(2))];
end

for k = 1:5
    rupdo3(:, k) = [rupdo3(:, k);(ones(range - length(rupdo3(:, k))) * averages(3))];
end

for k = 1:5
    rupdo4(:, k) = [rupdo4(:, k);(ones(range - length(rupdo4(:, k))) * averages(4))];
end

%create average curves
avg1 = mean(rupdo1, 2);
avg2 = mean(rupdo2, 2);
avg3 = mean(rupdo3, 2);
avg4 = mean(rupdo4, 2);

%write everything to excel
xlswrite('baserupdo.xslx', [avg1, avg2, avg3, avg4]);


