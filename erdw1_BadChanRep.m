% This script takes in all the bad channels and saves the file with the bad
% channels interpolated.
%
% Author: Emily Wu
% Date: May 24, 2016

subprompt = 'Which subject? ';
subnum = int2str(input(subprompt));
prompt = 'How many bad channels? ';
n = input(prompt);
badchan = [];

% adds all bad channels to a list
for i=1:n;
    prompt = 'Enter a bad channel: ';
    chan = input(prompt);
    badchan = [badchan chan];
end

% removes the bad channels one at a time and saves the file
for i=1:length(badchan);
    EEG = eeg_interp(EEG, badchan(i));
    file = strcat('erdw1_s', subnum, '_filtered_dsmp.set');
    EEG = pop_saveset( EEG, 'filename', file, 'filepath', 'C:\\Users\\RA\\Documents\\MATLAB\\eeglab13_5_4b\\erdw1\\02_Filtered-Downsampled\\');
    EEG = pop_loadset('filename', file, 'filepath', 'C:\\Users\\RA\\Documents\\MATLAB\\eeglab13_5_4b\\erdw1\\02_Filtered-Downsampled\\');
    EEG = eeg_checkset( EEG );  
end
