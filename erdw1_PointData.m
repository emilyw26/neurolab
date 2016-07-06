% This script converts the epoched and categorized ERPsets into textfiles
% containing the time and value for each epoch as a txt file.
%
% Author: Emily Wu
% Date: July 5, 2016

excluded = [1, 2, 3, 5, 12, 13, 15, 16, 17, 21, 27, 29, 43, 46, 47, 48, 49, 50, 54, 62, 64];


fprintf('\n**************************************************\n');
fprintf('Beginning Neg DWs.\n\n');


% Neg DWs
    for n = 1:64;
        if sum(find(n==excluded))==0
            n = int2str(n);
            start_str = strcat('Begin processing subject ', n, 'for Neg DWs.\n\n');
            fprintf(start_str);
            filename = strcat('erdw1 s', n, ' avg Neg DW.erp');
            filepath = strcat('\\130.58.85.144\shared\NorrisLab\Study\erdw1 (Emotion Reg & Disappointing Wins)\data\EEG_Data\ERP sets\Neg DW\');
            ERP = pop_loaderp('filename', filename, 'filepath', filepath);
            new_file = strcat('\\130.58.85.144\shared\NorrisLab\Study\erdw1 (Emotion Reg & Disappointing Wins)\data\EEG_Data\Data Points for each Subject\s', n, ' Neg DW.txt');
            pop_export2text( ERP, new_file, 1, 'electrodes', 'on', 'precision',  4, 'time', 'on', 'timeunit',  0.001, 'transpose', 'on' );
            done_str = strcat('Done processing subject ', n, ' for Neg DWs.\n\n');
            fprintf(done_str);
        end
    end
  
  
fprintf('\n**************************************************\n');
fprintf('Beginning Neg OLs.\n\n');

% Neg OLs
    for n = 1:64;
        if sum(find(n==excluded))==0
            n = int2str(n);
            start_str = strcat('Begin processing subject ', n, 'for Neg OLs.\n\n');
            fprintf(start_str);
            filename = strcat('erdw1 s', n, ' avg Neg OL.erp');
            filepath = strcat('\\130.58.85.144\shared\NorrisLab\Study\erdw1 (Emotion Reg & Disappointing Wins)\data\EEG_Data\ERP sets\Neg OL\');
            ERP = pop_loaderp('filename', filename, 'filepath', filepath);
            new_file = strcat('\\130.58.85.144\shared\NorrisLab\Study\erdw1 (Emotion Reg & Disappointing Wins)\data\EEG_Data\Data Points for each Subject\s', n, ' Neg OL.txt');
            pop_export2text( ERP, new_file, 1, 'electrodes', 'on', 'precision',  4, 'time', 'on', 'timeunit',  0.001, 'transpose', 'on' );
            done_str = strcat('Done processing subject ', n, ' for Neg OLs.\n\n');
            fprintf(done_str);
        end
    end
 
   
    
fprintf('\n**************************************************\n');
fprintf('Beginning Neg OWs.\n\n');

% Neg OWs
    for n = 1:64;
        if sum(find(n==excluded))==0
            n = int2str(n);
            start_str = strcat('Begin processing subject ', n, 'for Neg OWs.\n\n');
            fprintf(start_str);
            filename = strcat('erdw1 s', n, ' Neg OW.erp');
            filepath = strcat('\\130.58.85.144\shared\NorrisLab\Study\erdw1 (Emotion Reg & Disappointing Wins)\data\EEG_Data\ERP sets\Neg OW\');
            ERP = pop_loaderp('filename', filename, 'filepath', filepath);
            new_file = strcat('\\130.58.85.144\shared\NorrisLab\Study\erdw1 (Emotion Reg & Disappointing Wins)\data\EEG_Data\Data Points for each Subject\s', n, ' Neg OW.txt'); 
            pop_export2text( ERP, new_file, 1, 'electrodes', 'on', 'precision',  4, 'time', 'on', 'timeunit',  0.001, 'transpose', 'on' );
            done_str = strcat('Done processing subject ', n, ' for Neg OWs.\n\n');
            fprintf(done_str);
        end
    end

fprintf('\n**************************************************\n');
fprintf('Beginning Neg RLs.\n\n');

% Neg RLs
    for n = 1:64;
        if sum(find(n==excluded))==0
            n = int2str(n);
            start_str = strcat('Begin processing subject ', n, 'for Neg RLs.\n\n');
            fprintf(start_str);
            filename = strcat('erdw1 s', n, ' Neg RL.erp');
            filepath = strcat('\\130.58.85.144\shared\NorrisLab\Study\erdw1 (Emotion Reg & Disappointing Wins)\data\EEG_Data\ERP sets\Neg RL\');
            ERP = pop_loaderp('filename', filename, 'filepath', filepath);
            new_file = strcat('\\130.58.85.144\shared\NorrisLab\Study\erdw1 (Emotion Reg & Disappointing Wins)\data\EEG_Data\Data Points for each Subject\s', n, ' Neg RL.txt'); 
            pop_export2text( ERP, new_file, 1, 'electrodes', 'on', 'precision',  4, 'time', 'on', 'timeunit',  0.001, 'transpose', 'on' );
            done_str = strcat('Done processing subject ', n, ' for Neg RLs.\n\n');
            fprintf(done_str);
        end
    end
  
    
fprintf('\n**************************************************\n');
fprintf('Beginning Pos DWs.\n\n');

% Neu DWs
    for n = 1:64;
        if sum(find(n==excluded))==0
            n = int2str(n);
            start_str = strcat('Begin processing subject ', n, 'for Neu DWs.\n\n');
            fprintf(start_str);
            filename = strcat('erdw1 s', n, ' Neu DW.erp');
            filepath = strcat('\\130.58.85.144\shared\NorrisLab\Study\erdw1 (Emotion Reg & Disappointing Wins)\data\EEG_Data\ERP sets\Neu DW\');
            ERP = pop_loaderp('filename', filename, 'filepath', filepath);
            new_file = strcat('\\130.58.85.144\shared\NorrisLab\Study\erdw1 (Emotion Reg & Disappointing Wins)\data\EEG_Data\Data Points for each Subject\s', n, ' Neu DW.txt'); 
            pop_export2text( ERP, new_file, 1, 'electrodes', 'on', 'precision',  4, 'time', 'on', 'timeunit',  0.001, 'transpose', 'on' );
            done_str = strcat('Done processing subject ', n, ' for Neu DWs.\n\n');
            fprintf(done_str);
        end
    end
    
fprintf('\n**************************************************\n');
fprintf('Beginning Neu OLs.\n\n');

% Neu OLs
    for n = 1:64;
        if sum(find(n==excluded))==0
            n = int2str(n);
            start_str = strcat('Begin processing subject ', n, 'for Neu OLs.\n\n');
            fprintf(start_str);
            filename = strcat('erdw1 s', n, ' Neu OL.erp');
            filepath = strcat('\\130.58.85.144\shared\NorrisLab\Study\erdw1 (Emotion Reg & Disappointing Wins)\data\EEG_Data\ERP sets\Neu OL\');
            ERP = pop_loaderp('filename', filename, 'filepath', filepath);
            new_file = strcat('\\130.58.85.144\shared\NorrisLab\Study\erdw1 (Emotion Reg & Disappointing Wins)\data\EEG_Data\Data Points for each Subject\s', n, ' Neu OL.txt'); 
            pop_export2text( ERP, new_file, 1, 'electrodes', 'on', 'precision',  4, 'time', 'on', 'timeunit',  0.001, 'transpose', 'on' );
            done_str = strcat('Done processing subject ', n, ' for Neu OLs.\n\n');
            fprintf(done_str);
        end
    end
    
fprintf('\n**************************************************\n');
fprintf('Beginning Neu DWs.\n\n');

% Neu OWs
    for n = 1:64;
        if sum(find(n==excluded))==0
            n = int2str(n);
            start_str = strcat('Begin processing subject ', n, 'for Neu OWs.\n\n');
            fprintf(start_str);
            filename = strcat('erdw1 s', n, ' Neu OW.erp');
            filepath = strcat('\\130.58.85.144\shared\NorrisLab\Study\erdw1 (Emotion Reg & Disappointing Wins)\data\EEG_Data\ERP sets\Neu OW\');
            ERP = pop_loaderp('filename', filename, 'filepath', filepath);
            new_file = strcat('\\130.58.85.144\shared\NorrisLab\Study\erdw1 (Emotion Reg & Disappointing Wins)\data\EEG_Data\Data Points for each Subject\s', n, ' Neu OW.txt'); 
            pop_export2text( ERP, new_file, 1, 'electrodes', 'on', 'precision',  4, 'time', 'on', 'timeunit',  0.001, 'transpose', 'on' );
            done_str = strcat('Done processing subject ', n, ' for Neu OWs.\n\n');
            fprintf(done_str);
        end
    end
    
% Neu RLs
    for n = 1:64;
        if sum(find(n==excluded))==0
            n = int2str(n);
            start_str = strcat('Begin processing subject ', n, 'for Neu RLs.\n\n');
            fprintf(start_str);
            filename = strcat('erdw1 s', n, ' Neu RL.erp');
            filepath = strcat('\\130.58.85.144\shared\NorrisLab\Study\erdw1 (Emotion Reg & Disappointing Wins)\data\EEG_Data\ERP sets\Neu RL\');
            ERP = pop_loaderp('filename', filename, 'filepath', filepath);
            new_file = strcat('\\130.58.85.144\shared\NorrisLab\Study\erdw1 (Emotion Reg & Disappointing Wins)\data\EEG_Data\Data Points for each Subject\s', n, ' Neu RL.txt'); 
            pop_export2text( ERP, new_file, 1, 'electrodes', 'on', 'precision',  4, 'time', 'on', 'timeunit',  0.001, 'transpose', 'on' );
            done_str = strcat('Done processing subject ', n, ' for Neu RLs.\n\n');
            fprintf(done_str);
        end
    end
    
fprintf('\n**************************************************\n');
fprintf('Beginning Pos DWs.\n\n');

% Pos DWs
    for n = 1:64;
        if sum(find(n==excluded))==0
            n = int2str(n);
            start_str = strcat('Begin processing subject ', n, 'for Pos DWs.\n\n');
            fprintf(start_str);
            filename = strcat('erdw1 s', n, ' Pos DW.erp');
            filepath = strcat('\\130.58.85.144\shared\NorrisLab\Study\erdw1 (Emotion Reg & Disappointing Wins)\data\EEG_Data\ERP sets\Pos DW\');
            ERP = pop_loaderp('filename', filename, 'filepath', filepath);
            new_file = strcat('\\130.58.85.144\shared\NorrisLab\Study\erdw1 (Emotion Reg & Disappointing Wins)\data\EEG_Data\Data Points for each Subject\s', n, ' Pos DW.txt'); 
            pop_export2text( ERP, new_file, 1, 'electrodes', 'on', 'precision',  4, 'time', 'on', 'timeunit',  0.001, 'transpose', 'on' );
            done_str = strcat('Done processing subject ', n, ' for Pos DWs.\n\n');
            fprintf(done_str);
        end
    end
    
fprintf('\n**************************************************\n');
fprintf('Beginning Pos OLs.\n\n');

% Pos OLs
    for n = 1:64;
        if sum(find(n==excluded))==0
            n = int2str(n);
            start_str = strcat('Begin processing subject ', n, 'for Pos OLs.\n\n');
            fprintf(start_str);
            filename = strcat('erdw1 s', n, ' Pos OL.erp');
            filepath = strcat('\\130.58.85.144\shared\NorrisLab\Study\erdw1 (Emotion Reg & Disappointing Wins)\data\EEG_Data\ERP sets\Pos OL\');
            ERP = pop_loaderp('filename', filename, 'filepath', filepath);
            new_file = strcat('\\130.58.85.144\shared\NorrisLab\Study\erdw1 (Emotion Reg & Disappointing Wins)\data\EEG_Data\Data Points for each Subject\s', n, ' Pos OL.txt'); 
            pop_export2text( ERP, new_file, 1, 'electrodes', 'on', 'precision',  4, 'time', 'on', 'timeunit',  0.001, 'transpose', 'on' );
            done_str = strcat('Done processing subject ', n, ' for Pos OLs.\n\n');
            fprintf(done_str);
        end
    end
    
fprintf('\n**************************************************\n');
fprintf('Beginning Pos DWs.\n\n');

% Pos OWs
    for n = 1:64;
        if sum(find(n==excluded))==0
            n = int2str(n);
            start_str = strcat('Begin processing subject ', n, 'for Pos OWs.\n\n');
            fprintf(start_str);
            filename = strcat('erdw1 s', n, ' Pos OW.erp');
            filepath = strcat('\\130.58.85.144\shared\NorrisLab\Study\erdw1 (Emotion Reg & Disappointing Wins)\data\EEG_Data\ERP sets\Pos OW\');
            ERP = pop_loaderp('filename', filename, 'filepath', filepath);
            new_file = strcat('\\130.58.85.144\shared\NorrisLab\Study\erdw1 (Emotion Reg & Disappointing Wins)\data\EEG_Data\Data Points for each Subject\s', n, ' Pos OW.txt'); 
            pop_export2text( ERP, new_file, 1, 'electrodes', 'on', 'precision',  4, 'time', 'on', 'timeunit',  0.001, 'transpose', 'on' );
            done_str = strcat('Done processing subject ', n, ' for Pos OWs.\n\n');
            fprintf(done_str);
        end
    end
    
% Pos RLs
    for n = 1:64;
        if sum(find(n==excluded))==0
            n = int2str(n);
            start_str = strcat('Begin processing subject ', n, 'for Pos RLs.\n\n');
            fprintf(start_str);
            filename = strcat('erdw1 s', n, ' Pos RL.erp');
            filepath = strcat('\\130.58.85.144\shared\NorrisLab\Study\erdw1 (Emotion Reg & Disappointing Wins)\data\EEG_Data\ERP sets\Pos RL\');
            ERP = pop_loaderp('filename', filename, 'filepath', filepath);
            new_file = strcat('\\130.58.85.144\shared\NorrisLab\Study\erdw1 (Emotion Reg & Disappointing Wins)\data\EEG_Data\Data Points for each Subject\s', n, ' Pos RL.txt'); 
            pop_export2text( ERP, new_file, 1, 'electrodes', 'on', 'precision',  4, 'time', 'on', 'timeunit',  0.001, 'transpose', 'on' );
            done_str = strcat('Done processing subject ', n, ' for Pos RLs.\n\n');
            fprintf(done_str);
        end
    end
    