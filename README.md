# Norris Social Neuroscience Lab: Summer 2016
This repo contains code that I have written for my neuroscience research with Catherine Norris.

### erdw1_FilterDsmp.m:
This file filters and downsamples several .RAW files. 
- Change the numbers in excluded to include any subjects that do not have .RAW files, or that you intend to drop.
- Change the for loop in line 12 to start at your first subject and end at your last subject.
    - Note that MATLAB vectors start at 1, and for loops end on the last number provided.
- Modify the pathways/filenames in lines 17, 21, 24, 27, 29, and 30 as you see fit.

### erdw1_BadChanRep.m:
This file asks for a subject number, number of bad channels, and each bad channel individually.
- Modify the pathways/filenames in lines 23, 24, and 25 as you see fit. 

### erdw1_ICA.m:
This file performs ICA on several datasets.
- Change the numbers in excluded the match the excluded list you created in erdw1_FilterDsmp.m.
- Modify the pathways/filenames in lines 14, 17, 20, and 21 as you see fit.

### erdw1_RemoveEvents.m:
This file removes any of the events in the data that are not relevant to your data analysis. This is optional.
- Modify the strings in line 14 as you see fit. If you want to add more events that will be removed, add additional   "| strcmp(event_name, check)"s. If you do not want as many, delete these. 


