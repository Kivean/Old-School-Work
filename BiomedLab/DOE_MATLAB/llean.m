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
llean1 = [];
llean2 = [];
llean3 = [];
llean4 = [];

%get data from excel docs
for k = 1:5
    name = strcat('llean', int2str(k), '.xlsx');
    llean1 = [llean1, abs(detrend(xlsread(name, range1)))];
end

for k = 1:5
    name = strcat('llean', int2str(k), '.xlsx');
    llean2 = [llean2, abs(detrend(xlsread(name, range2)))];
end

for k = 1:5
    name = strcat('llean', int2str(k), '.xlsx');
    llean3 = [llean3, abs(detrend(xlsread(name, range3)))];
end

for k = 1:5
    name = strcat('llean', int2str(k), '.xlsx');
    llean4 = [llean4, abs(detrend(xlsread(name, range4)))];
end

%get starting values for peak alignment, and align them so the start is on
%the 10th sample
delay1 = emgon(llean1(:, 1), Fs, Ws, Sd, averages(1), stdevs(1));
llean1(:, 1) = llean1(delay1 - 10: end, 1);
delay2 = emgon(llean2(:, 1), Fs, Ws, Sd, averages(2), stdevs(2));
llean2(:, 1) = llean2(delay2 - 10: end, 1);
delay3 = emgon(llean3(:, 1), Fs, Ws, Sd, averages(3), stdevs(3));
llean3(:, 1) = llean3(delay3 - 10: end, 1);
delay4 = emgon(llean4(:, 1), Fs, Ws, Sd, averages(4), stdevs(4));
llean4(:, 1) = llean4(delay4 - 10: end, 1);

%match peaks using emgon
for k = 2:5
    delay = emgon(llean1(:, k), Fs, Ws, Sd, averages(1), stdevs(1));
    if delay1 > delay
        lag = delay1 - delay;
        llean1(:, k) = [(ones(lag, 1) * averages(1));llean1(:, k)];
    elseif delay1 < delay
        lag = delay1 - delay;
        llean1(:, k) = llean1(lag:end, k);
    end
end

for k = 2:5
    delay = emgon(llean2(:, k), Fs, Ws, Sd, averages(2), stdevs(2));
    if delay2 > delay
        lag = delay2 - delay;
        llean2(:, k) = [(ones(lag, 1) * averages(2));llean2(:, k)];
    elseif delay2 < delay
        lag = delay2 - delay;
        llean2(:, k) = llean2(lag:end, k);
    end
end

for k = 2:5
    delay = emgon(llean3(:, k), Fs, Ws, Sd, averages(3), stdevs(3));
    if delay3 > delay
        lag = delay3 - delay;
        llean3(:, k) = [(ones(lag, 1) * averages(3));llean3(:, k)];
    elseif delay3 < delay
        lag = delay3 - delay;
        llean3(:, k) = llean3(lag:end, k);
    end
end

for k = 2:5
    delay = emgon(llean4(:, k), Fs, Ws, Sd, averages(4), stdevs(4));
    if delay4 > delay
        lag = delay4 - delay;
        llean4(:, k) = [(ones(lag, 1) * averages(4));llean4(:, k)];
    elseif delay4 < delay
        lag = delay4 - delay;
        llean4(:, k) = llean4(lag:end, k);
    end
end

%pad datasets to correct size
for k = 1:5
    llean1(:, k) = [llean1(:, k);(ones(range - length(llean1(:, k))) * averages(1))];
end

for k = 1:5
    llean2(:, k) = [llean2(:, k);(ones(range - length(llean2(:, k))) * averages(2))];
end

for k = 1:5
    llean3(:, k) = [llean3(:, k);(ones(range - length(llean3(:, k))) * averages(3))];
end

for k = 1:5
    llean4(:, k) = [llean4(:, k);(ones(range - length(llean4(:, k))) * averages(4))];
end

%create average curves
avg1 = mean(llean1, 2);
avg2 = mean(llean2, 2);
avg3 = mean(llean3, 2);
avg4 = mean(llean4, 2);

%write everything to excel
xlswrite('basellean.xslx', [avg1, avg2, avg3, avg4]);


