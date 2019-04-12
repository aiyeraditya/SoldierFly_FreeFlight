function wing_movement = get_peak_values(stroke, name)
    [p_R, PI_R] = findpeaks(stroke, 'Minpeakheight', 0.01, ...
        'Minpeakdistance', 15);
    offset = min(p_R);
    stroke1 = stroke - 0.95*offset;
    [np_R, NPI_R] = findpeaks(-1*stroke1, 'Minpeakheight', 0.01, ...
        'Minpeakdistance', 15);

    
    f = figure('visible','off');
    plot(stroke)
    hold on;
    plot(PI_R, p_R, 'r*')
    plot(NPI_R, -1*np_R + 0.95*offset, 'bo')
    hold off;
    title(name + " Labeled With Peaks")
    xlabel("Frame Number")
    ylabel("Angle (rad)")
    saveas(f,'Each_Fly_Plot/' + name + 'Peaks_Labeled.eps') 
    

    % Now I have dorsal excursions and ventral excursions
    
    if(length(p_R) > 21)
        p_R = p_R(2:21);
        np_R = np_R(2:21);
    else
        p_R = p_R(2:length(p_R));
        np_R = np_R(2:length(np_R));
    end
    
    wing_movement = wing_data;
    wing_movement.dorsal_excursion = p_R;
    wing_movement.ventral_excursion = np_R - 0.95*offset;
    
    wing_movement.dorsal_excursion_mean = mean(p_R);
    wing_movement.ventral_excursion_mean = mean(wing_movement.ventral_excursion);
    wing_movement.up_P2P_mean = wing_movement.dorsal_excursion_mean + wing_movement.ventral_excursion_mean; 

end