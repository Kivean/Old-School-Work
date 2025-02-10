function onoff = emgon(rawemg, fs, ws, sd, avg, stdev)
% EMGON - Find on point in EMG data
% Define "on" EMG as the sample where average value of EMG in a given window
% range around the sample is a given # of std. dev. above avg. resting EMG.
%
% onoff = emgonoff(rawemg, fs, ws, sd, avg, stdev)
%
% rawemg = input file raw emg data (1-column vector)
% fs = sampling rate of raw EMG data in Hz
% ws = window size in milliseconds (50ms @ 2400Hz = 120 samples)
% sd = number of std. deviations above resting rms emg to trigger an "ON"
% Default values: 
%   ws = 50ms
%   sd = 1
% avg = resting state mean value
% stdev = resting state standard deviation

%% Check inputs for defaults
if nargin < 2, error('Not enough inputs. Type "help emgon" for help.'); end
if nargin < 3, ws = 50; end
if nargin < 4, sd = 1; end;
%% preallocate arrays
mvgav = zeros(length(rawemg),1); 
onoff(1,1) = 0;
i=0;
restav = avg; %average value of rest EMG before ON
reststd = stdev; %std. dev. of rest EMG before ON
%% window size (in samples) = ws*fs e.g. 50ms*2400Hz = 120 samples
sws2 = fs*(0.001*ws);
sws = 0.5*(sws2);
sws = round(sws);
sws = 10;%CHANGED
%% find "ON" index:
% for xi, change from x(1) to x(2) if you want to ignore any "blips"
% within the resting range.
%xi = x(1);
xi = 100; %CHANGED
for n = 2:((length(mvgav) - 105))
    mvgav(n,1) = mean(rawemg((xi-sws):(xi+sws)));
    if mvgav(n) > restav+sd*reststd
        i = i+1;
        onoff(i,1) = xi;
        break
    end
    xi = xi+1;
end
%% return error index
if i == 0
    onoff(1, 1) = -1;
end