% This program runs ICA on the datafile.
% 
% Author: Emily Wu
% Date: May 24, 2016

excluded = [1, 4, 10, 12, 13, 14, 15, 16, 17, 43, 50, 54, 62];

for subnum=2:11;
    if sum(find(subnum==excluded))==0 
        fprintf('\n**************************************************\n');
        string = strcat('Processing subject ', int2str(subnum), '.\n');
        fprintf(string);
        file = strcat('erdw1_s', int2str(subnum), '_filtered_dsmp.set');
        EEG = pop_loadset('filename', file,'filepath','C:\\Users\\RA\\Documents\\MATLAB\\eeglab13_5_4b\\erdw1\\02_Filtered-Downsampled\\');
        EEG = eeg_checkset( EEG );
        EEG = eeg_checkset( EEG );
        EEG = pop_runica(EEG, 'extended',1,'interupt','on');
        EEG = eeg_checkset( EEG );
        new_file = strcat('erdw1_s', int2str(subnum), '_filtered_dsmp_ica.set');
        EEG = pop_saveset( EEG, 'filename', new_file,'filepath','C:\\Users\\RA\\Documents\\MATLAB\\eeglab13_5_4b\\erdw1\\03_ICA_(no-prune)\\');
        fprintf('File saved.\n');
        EEG = eeg_checkset( EEG );
        EEG.setname= new_file;
        EEG = eeg_checkset( EEG );
    end 
end