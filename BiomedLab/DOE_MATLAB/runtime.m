% pseudocode for this module we'll put in LabVIEW
% needs to get some 1 second long string of data
% identifies the start of the EMG signal in that input vector
% then checks each case for each of the four leads
% is lead 1 case 1, 2, 3, 4, 5? is lead 2... and so on
% averages out the errors for each lead on each case
% if any of the errors break some threshold, the lowest one is the command

% might need to rectify signal to work with it

%inputs: refarray, storedarray, inputarray, i, errthresh
%outputs: storedarray, i, returnval

if length(storedarray) < range
    storedarray = [storedarray;inputarray];
else
    storedarray = [storedarray(2:end, :);inputarray];
end

if i < range
    i = i + 1;
    returnval = 'No Change';
elseif storedarray(10, 1) > threshold || storedarray(10, 2) > threshold || storedarray(10, 3) > threshold || storedarray(10, 4) > threshold
        
    %[b,a]=butter(5,10/250,'low'); NEED PARAMS FOR THIS
    computederrors = [];
        
    lead1 = abs(detrend(storedarray(:, 1)));
    lead2 = abs(detrend(storedarray(:, 2)));
    lead3 = abs(detrend(storedarray(:, 3)));
    lead4 = abs(detrend(storedarray(:, 4)));
    leads = [lead1, lead2, lead3, lead4];
        
    for m = 0:4:20
        errors = zeros(1, 4); %preallocate for speed
        for n = 1:4
            err = immse(refarray(:,(m + n)), leads(:, n));
            residual = sqrt(err);
            errors(i) = residual;
        end
        computederrors = [computederrors, mean(errors)];
    end

    if computederrors(1) > errthresh
        returnval = 'Stop';
        i = 0;
    elseif computederrors(2) > errthresh
        returnval = 'Forward';
        i = 0;
    elseif computederrors(3) > errthresh
        returnval = 'Reverse';
        i = 0;
    elseif computederrors(4) > errthresh
        returnval = 'Left';
        i = 0;
    elseif computederrors(5) > errthresh
        returnval = 'Right';
        i = 0;
    else
        returnval = 'No Change';
    end
end
            
        
        
        
        
        
        
        