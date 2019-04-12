% This function the array 'Treatment' which has the list of class objects.
% And outputs the means of the amplitudes and stuff

function means_stroke = findmeans(Treatment)
    means_stroke = mean_wing_data();
    Right_upP2P_mean = [];
    Right_downP2P_mean = [];
    Right_dorsal_excursion_mean = [];
    Right_ventral_excursion_mean = [];
    Left_upP2P_mean = [];
    Left_downP2P_mean = [];
    Left_dorsal_excursion_mean = [];
    Left_ventral_excursion_mean = [];
    for i = 1:length(Treatment)
        Right_upP2P_mean = [Right_upP2P_mean, ...
            Treatment(i).Rst_param.up_P2P_mean];
        Right_downP2P_mean = [Right_downP2P_mean, ...
            Treatment(i).Rst_param.down_P2P_mean];
        Right_dorsal_excursion_mean = [Right_dorsal_excursion_mean, ...
            Treatment(i).Rst_param.dorsal_excursion_mean];
        Right_ventral_excursion_mean = [Right_ventral_excursion_mean, ...
            Treatment(i).Rst_param.ventral_excursion_mean];
        Left_upP2P_mean = [Left_upP2P_mean, ...
            Treatment(i).Lst_param.up_P2P_mean];
        Left_downP2P_mean = [Left_downP2P_mean, ...
            Treatment(i).Lst_param.down_P2P_mean];
        Left_dorsal_excursion_mean = [Left_dorsal_excursion_mean, ...
            Treatment(i).Lst_param.dorsal_excursion_mean];
        Left_ventral_excursion_mean = [Left_ventral_excursion_mean, ...
            Treatment(i).Lst_param.ventral_excursion_mean];
    end
    means_stroke.Right_upP2P_mean = Right_upP2P_mean;
    means_stroke.Right_downP2P_mean = Right_downP2P_mean;
    means_stroke.Right_dorsal_excursion_mean = Right_dorsal_excursion_mean;
    means_stroke.Right_ventral_excursion_mean = Right_ventral_excursion_mean;
    means_stroke.Left_upP2P_mean = Left_upP2P_mean;
    means_stroke.Left_downP2P_mean = Left_downP2P_mean;
    means_stroke.Left_dorsal_excursion_mean = Left_dorsal_excursion_mean;
    means_stroke.Left_ventral_excursion_mean = Left_ventral_excursion_mean;

end
