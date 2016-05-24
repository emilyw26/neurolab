% This program finds all instances of specific events in a dataset and 
% removes them.
%
% Author: Emily Wu
% Date: May 23, 2016

indices = [];

% Finds the indices of each fix2 event
for i=1:length(EEG.event);
    check = {EEG.event(i).type};
    % change the event names in the strcmp methods to the specific one you
    % want to remove
    if strcmp('fix2', check) | strcmp('BSc1', check)| strcmp('BSc2', check)| strcmp('BSc3', check) | strcmp('TRSP', check) | strcmp('bgin', check) | strcmp('TLE', check)
        indices = [indices i]; %indices to remove
    end
end

EEG.event(indices) = []; %removes these elements

