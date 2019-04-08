%% Aditya Iyer 05 April 2019
%%%%%%%

% Defines a class for storing wing movement parameters. Arrays for 
% excursion, and peak amplitudes and means of all of these.
% Nested class for fly_data

%%%%%%%%%%%%%%%%%%%%%%%%

classdef wing_data
    properties
        dorsal_excursion
        ventral_excursion
        dorsal_excursion_mean
        ventral_excursion_mean
        up_P2P_mean
    end
end
