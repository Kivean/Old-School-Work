jokes1 = xlsread('testshrugs.xlsx','B2000:B5500'); 
jokes2 = xlsread('testshrugs.xlsx','B4750:B8250');
%for n = 1:2501
%    jokes1(n) = jokes1(n) + .01;
%end
%[notjokes1, notjokes2] = alignsignals(jokes1, jokes2);
time = xlsread('testshrugs.xlsx','A2000:A5500');

notjokes1 = detrend(jokes1);
notjokes2 = detrend(jokes2);

recjokes1 = abs(notjokes1);
recjokes2 = abs(notjokes2);

[b,a]=butter(5,10/250,'low');

filjokes1=filtfilt(b,a,recjokes1);
filjokes2=filtfilt(b,a,recjokes2);

onjokes1 = emgonoff(filjokes1, 10000, 5, 3)
onjokes2 = emgonoff(filjokes2, 10000, 5, 3)

if onjokes1(1) > onjokes2(1)
    lag = onjokes1(1) - onjokes2(1);
    filjokes1 = filjokes1(lag:3501);
elseif onjokes1(1) < onjokes2(1)
    lag = onjokes2(1) - onjokes1(1);
    filjokes2 = filjokes2(lag:3501);
end

subplot(4,1,1)       % add first plot in 2 x 1 grid
plot(time, jokes1, time, jokes2)
title('jokes')

subplot(4,1,2)       % add second plot in 2 x 1 grid
plot(time, notjokes1, time, notjokes2)       % plot using + markers
title('notjoke')

subplot(4,1,3)       % add second plot in 2 x 1 grid
plot(time, recjokes1, time, recjokes2)       % plot using + markers
title('recjoke')

subplot(4,1,4)       % add second plot in 2 x 1 grid
plot(time(1:length(filjokes1)), filjokes1, time(1:length(filjokes2)), filjokes2) 
title('filjoke')

err1 = sqrt(immse(recjokes1, recjokes2))
err2 = sqrt(immse([filjokes1;zeros(3501 - length(filjokes1), 1)], filjokes2))

