% This program splits the original file into smaller, uni-epoched files for
% averaging.
% 
% Author: Emily Wu
% Date: June 6, 2016

excluded = [1, 2, 3, 5, 10, 12, 13, 15, 16, 17, 21, 27, 29, 42, 43, 46, 47, 48, 49, 50, 54, 62, 64];

for subnum=37:64;
    if sum(find(subnum==excluded))==0 
        fprintf('\n**************************************************\n');
        string = strcat('Processing subject ', int2str(subnum), '.\n');
        fprintf(string);
        
        n = int2str(subnum);
        filename = strcat('erdw1_s', n, '_filtered_dsmp_ica_pruned_reref_epochs.set');

        % Neutral - OW
        EEG = pop_loadset('filename', filename,'filepath','C:\\Users\\RA\\Documents\\MATLAB\\eeglab13_5_4b\\erdw1\\06_Segmented-ArtRemoval\\');
        EEG = eeg_checkset( EEG );
        EEG = pop_selectevent( EEG, 'emo',{'Neutral'},'gtype',{'Choice'},'out',{'OW'},'deleteevents','on','deleteepochs','on','invertepochs','off');
        neu_OW = strcat('erdw1 s', n, ' Neutral OW');
        EEG = pop_saveset( EEG, 'filename', neu_OW,'filepath', 'C:\\Users\\RA\\Documents\\MATLAB\\eeglab13_5_4b\\erdw1\\07_Averaged\\Neutral\\OW');
        EEG = eeg_checkset( EEG );

        % Neutral - DW
        EEG = pop_loadset('filename', filename,'filepath','C:\\Users\\RA\\Documents\\MATLAB\\eeglab13_5_4b\\erdw1\\06_Segmented-ArtRemoval\\');
        EEG = eeg_checkset( EEG );
        EEG = pop_selectevent( EEG, 'emo',{'Neutral'},'gtype',{'Choice'},'out',{'DW'},'deleteevents','on','deleteepochs','on','invertepochs','off');
        neu_DW = strcat('erdw1 s', n, ' Neutral DW');
        EEG = pop_saveset( EEG, 'filename', neu_DW,'filepath', 'C:\\Users\\RA\\Documents\\MATLAB\\eeglab13_5_4b\\erdw1\\07_Averaged\\Neutral\\DW');
        EEG = eeg_checkset( EEG );


        % Neutral - RL
        EEG = pop_loadset('filename', filename,'filepath','C:\\Users\\RA\\Documents\\MATLAB\\eeglab13_5_4b\\erdw1\\06_Segmented-ArtRemoval\\');
        EEG = eeg_checkset( EEG );
        EEG = pop_selectevent( EEG, 'emo',{'Neutral'},'gtype',{'Choice'},'out',{'RL'},'deleteevents','on','deleteepochs','on','invertepochs','off');
        neu_RL = strcat('erdw1 s', n, ' Neutral RL');
        EEG = pop_saveset( EEG, 'filename', neu_RL,'filepath', 'C:\\Users\\RA\\Documents\\MATLAB\\eeglab13_5_4b\\erdw1\\07_Averaged\\Neutral\\RL');
        EEG = eeg_checkset( EEG );

        % Neutral - OL
        EEG = pop_loadset('filename', filename,'filepath','C:\\Users\\RA\\Documents\\MATLAB\\eeglab13_5_4b\\erdw1\\06_Segmented-ArtRemoval\\');
        EEG = eeg_checkset( EEG );
        EEG = pop_selectevent( EEG, 'emo',{'Neutral'},'gtype',{'Choice'},'out',{'OL'},'deleteevents','on','deleteepochs','on','invertepochs','off');
        neu_OL = strcat('erdw1 s', n, ' Neutral OL');
        EEG = pop_saveset( EEG, 'filename', neu_OL,'filepath', 'C:\\Users\\RA\\Documents\\MATLAB\\eeglab13_5_4b\\erdw1\\07_Averaged\\Neutral\\OL');
        EEG = eeg_checkset( EEG );

        % *************************************************************************

        % Positive - OW
        EEG = pop_loadset('filename', filename,'filepath','C:\\Users\\RA\\Documents\\MATLAB\\eeglab13_5_4b\\erdw1\\06_Segmented-ArtRemoval\\');
        EEG = eeg_checkset( EEG );
        EEG = pop_selectevent( EEG, 'emo',{'Positive'},'gtype',{'Choice'},'out',{'OW'},'deleteevents','on','deleteepochs','on','invertepochs','off');
        pos_OW = strcat('erdw1 s', n, ' Positive OW');
        EEG = pop_saveset( EEG, 'filename', pos_OW,'filepath', 'C:\\Users\\RA\\Documents\\MATLAB\\eeglab13_5_4b\\erdw1\\07_Averaged\\Positive\\OW');
        EEG = eeg_checkset( EEG );

        % Positive - DW
        EEG = pop_loadset('filename', filename,'filepath','C:\\Users\\RA\\Documents\\MATLAB\\eeglab13_5_4b\\erdw1\\06_Segmented-ArtRemoval\\');
        EEG = eeg_checkset( EEG );
        EEG = pop_selectevent( EEG, 'emo',{'Positive'},'gtype',{'Choice'},'out',{'DW'},'deleteevents','on','deleteepochs','on','invertepochs','off');
        pos_DW = strcat('erdw1 s', n, ' Positive DW');
        EEG = pop_saveset( EEG, 'filename', pos_DW,'filepath', 'C:\\Users\\RA\\Documents\\MATLAB\\eeglab13_5_4b\\erdw1\\07_Averaged\\Positive\\DW');
        EEG = eeg_checkset( EEG );


        % Positive - RL
        EEG = pop_loadset('filename', filename,'filepath','C:\\Users\\RA\\Documents\\MATLAB\\eeglab13_5_4b\\erdw1\\06_Segmented-ArtRemoval\\');
        EEG = eeg_checkset( EEG );
        EEG = pop_selectevent( EEG, 'emo',{'Positive'},'gtype',{'Choice'},'out',{'RL'},'deleteevents','on','deleteepochs','on','invertepochs','off');
        pos_RL = strcat('erdw1 s', n, ' Positive RL');
        EEG = pop_saveset( EEG, 'filename', pos_RL,'filepath', 'C:\\Users\\RA\\Documents\\MATLAB\\eeglab13_5_4b\\erdw1\\07_Averaged\\Positive\\RL');
        EEG = eeg_checkset( EEG );

        % Positive - OL
        EEG = pop_loadset('filename', filename,'filepath','C:\\Users\\RA\\Documents\\MATLAB\\eeglab13_5_4b\\erdw1\\06_Segmented-ArtRemoval\\');
        EEG = eeg_checkset( EEG );
        EEG = pop_selectevent( EEG, 'emo',{'Positive'},'gtype',{'Choice'},'out',{'OL'},'deleteevents','on','deleteepochs','on','invertepochs','off');
        pos_OL = strcat('erdw1 s', n, ' Positive OL');
        EEG = pop_saveset( EEG, 'filename', pos_OL,'filepath', 'C:\\Users\\RA\\Documents\\MATLAB\\eeglab13_5_4b\\erdw1\\07_Averaged\\Positive\\OL');
        EEG = eeg_checkset( EEG );

        % *************************************************************************

        % Negative - OW
        EEG = pop_loadset('filename', filename,'filepath','C:\\Users\\RA\\Documents\\MATLAB\\eeglab13_5_4b\\erdw1\\06_Segmented-ArtRemoval\\');
        EEG = eeg_checkset( EEG );
        EEG = pop_selectevent( EEG, 'emo',{'Negative'},'gtype',{'Choice'},'out',{'OW'},'deleteevents','on','deleteepochs','on','invertepochs','off');
        neg_OW = strcat('erdw1 s', n, ' Negative OW');
        EEG = pop_saveset( EEG, 'filename', neg_OW,'filepath', 'C:\\Users\\RA\\Documents\\MATLAB\\eeglab13_5_4b\\erdw1\\07_Averaged\\Negative\\OW');
        EEG = eeg_checkset( EEG );

        % Negative - DW
        EEG = pop_loadset('filename', filename,'filepath','C:\\Users\\RA\\Documents\\MATLAB\\eeglab13_5_4b\\erdw1\\06_Segmented-ArtRemoval\\');
        EEG = eeg_checkset( EEG );
        EEG = pop_selectevent( EEG, 'emo',{'Negative'},'gtype',{'Choice'},'out',{'DW'},'deleteevents','on','deleteepochs','on','invertepochs','off');
        neg_DW = strcat('erdw1 s', n, ' Negative DW');
        EEG = pop_saveset( EEG, 'filename', neg_DW,'filepath', 'C:\\Users\\RA\\Documents\\MATLAB\\eeglab13_5_4b\\erdw1\\07_Averaged\\Negative\\DW');
        EEG = eeg_checkset( EEG );


        % Negative - RL
        EEG = pop_loadset('filename', filename,'filepath','C:\\Users\\RA\\Documents\\MATLAB\\eeglab13_5_4b\\erdw1\\06_Segmented-ArtRemoval\\');
        EEG = eeg_checkset( EEG );
        EEG = pop_selectevent( EEG, 'emo',{'Negative'},'gtype',{'Choice'},'out',{'RL'},'deleteevents','on','deleteepochs','on','invertepochs','off');
        neg_RL = strcat('erdw1 s', n, ' Negative RL');
        EEG = pop_saveset( EEG, 'filename', neg_RL,'filepath', 'C:\\Users\\RA\\Documents\\MATLAB\\eeglab13_5_4b\\erdw1\\07_Averaged\\Negative\\RL');
        EEG = eeg_checkset( EEG );

        % Negative - OL
        EEG = pop_loadset('filename', filename,'filepath','C:\\Users\\RA\\Documents\\MATLAB\\eeglab13_5_4b\\erdw1\\06_Segmented-ArtRemoval\\');
        EEG = eeg_checkset( EEG );
        EEG = pop_selectevent( EEG, 'emo',{'Negative'},'gtype',{'Choice'},'out',{'OL'},'deleteevents','on','deleteepochs','on','invertepochs','off');
        neg_OL = strcat('erdw1 s', n, ' Negative OL');
        EEG = pop_saveset( EEG, 'filename', neg_OL,'filepath', 'C:\\Users\\RA\\Documents\\MATLAB\\eeglab13_5_4b\\erdw1\\07_Averaged\\Negative\\OL');
        EEG = eeg_checkset( EEG );
    end
end

eeglab redraw;
