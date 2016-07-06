% This program converts epoched, Neg OL EEGLAB files into ERPLAB sets
% for statistical extraction using ERLAB.
%
% Author: Emily Wu
% Date: June 10, 2016

subprompt = 'Which subject? ';
subnum = int2str(input(subprompt));
filename = strcat('erdw1 s', subnum, ' Negative OL.set');
EEG = pop_loadset('filename', filename,'filepath','C:\\Users\\RA\\Documents\\MATLAB\\eeglab13_5_4b\\erdw1_64\\07_Averaged\\Negative\\OL\\');
EEG = eeg_checkset( EEG );
EEG = pop_epoch2continuous(EEG); 
new_name = strcat('erdw1 s', subnum);
EEG.setname= new_name;
EEG = eeg_checkset( EEG );
EEG  = pop_editeventlist( EEG , 'AlphanumericCleaning', 'on', 'BoundaryNumeric', { -99}, 'BoundaryString', { 'boundary' }, 'ExportEL', 'Neg OLs everything elist.txt', 'List', 'C:\Users\RA\Documents\MATLAB\eeglab13_5_4b\erdw1_64\ERP sets\Neg OLs.txt', 'SendEL2', 'EEG&Text', 'UpdateEEG', 'on', 'Warning', 'on' );
EEG = eeg_checkset( EEG );
EEG = pop_epochbin( EEG , [-250.0  1000.0],  'pre'); 
EEG = eeg_checkset( EEG );