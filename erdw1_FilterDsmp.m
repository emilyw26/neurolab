% This script loads the data, uploads channel locations, filters, and
% downsamples.
%
% Author: Emily Wu
% Date: May 23, 2016

%prompt = 'Which subject would you like to process? ';
%n = int2str(input(prompt));

excluded = [1, 4, 10, 12, 13, 14, 15, 16, 17, 43, 50, 54, 62];

for n=18:63
    if sum(find(n==excluded))==0
        fprintf('\n**************************************************\n');
        string = strcat('Processing subject ', int2str(n), '.\n');
        fprintf(string);
        filename = strcat('C:\Users\RA\Documents\MATLAB\eeglab13_5_4b\erdw1\01_Raw\erdw1_s', int2str(n), '.raw');
        EEG = pop_readegi(filename, [],[],'auto');
        EEG.setname=strcat('erdw1_s','n');
        EEG = eeg_checkset( EEG );
        EEG= pop_chanedit(EEG, 'load',{'C:\\Users\\RA\\Documents\\MATLAB\\eeglab13_5_4b\\sample_locs\\GSN-Hydrocel-64 1.0.sfp' 'filetype' 'autodetect'});
        EEG = eeg_checkset( EEG );
        EEG = pop_eegfiltnew(EEG, 1, 40, 3300, 0, [], 0);
        EEG.setname= strcat('erdw1_s%d_filtered', n);
        EEG = eeg_checkset( EEG );
        EEG = pop_resample( EEG, 256);
        EEG.setname= strcat('erdw1_s%d_filtered_dsmp',n);
        EEG = eeg_checkset( EEG );
        filename = strcat('erdw1_s', int2str(n), '_filtered_dsmp.set'); 
        EEG = pop_saveset( EEG, 'filename',filename,'filepath','C:\\Users\\RA\\Documents\\MATLAB\\eeglab13_5_4b\\erdw1\\02_Filtered-Downsampled\\');
    end
end