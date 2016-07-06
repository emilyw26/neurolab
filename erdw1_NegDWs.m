% This program converts epoched, Neg DW EEGLAB files into ERPLAB sets
% for statistical extraction using ERLAB.
%
% Author: Emily Wu
% Date: June 10, 2016

subprompt = 'Which subject? ';
subnum = int2str(input(subprompt));
filename = strcat('erdw1 s', subnum, ' Negative DW.set');
EEG = pop_loadset('filename', filename,'filepath','C:\\Users\\RA\\Documents\\MATLAB\\eeglab13_5_4b\\erdw1_64\\07_Averaged\\Negative\\DW\\');
EEG = eeg_checkset( EEG );
EEG = pop_epoch2continuous(EEG); 
new_name = strcat('erdw1 s', subnum);
EEG.setname= new_name;
EEG = eeg_checkset( EEG );
EEG  = pop_editeventlist( EEG , 'AlphanumericCleaning', 'on', 'BoundaryNumeric', { -99}, 'BoundaryString', { 'boundary' }, 'ExportEL', 's8 elist.txt', 'List', 'C:\Users\RA\Documents\MATLAB\eeglab13_5_4b\erdw1_64\07_Averaged\Negative\DW\s10 elist.txt', 'SendEL2', 'EEG&Text', 'UpdateEEG', 'on', 'Warning', 'on' ); % GUI: 10-Jun-2016 13:40:36
EEG = eeg_checkset( EEG );
EEG = pop_epochbin( EEG , [-250.0  1000.0],  'pre'); 
EEG = eeg_checkset( EEG );
