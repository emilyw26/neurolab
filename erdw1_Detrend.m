% This program removes any linear drift from the data.
%
% Author: Arnaud Delorme
% Date: May 10, 2013

for i = 1:EEG.trials, 
    EEG.data(:,:,i) = detrend(EEG.data(:,:,i)')'; 
end;

[ALLEEG EEG CURRENTSET] = eeg_store(ALLEEG, EEG);
eeglab redraw
