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
    saveas(f,name + 'Peaks_Labeled.eps') 
    
    ending = 1;
    up = 2;
    down = 2;
    up_P2P = [];
    down_P2P = [];

  % Need a method to confirm this thing
    if(PI_R(2) < NPI_R(2))
        while(ending == 1)
            % Upstroke First
            if((up+1 == length(PI_R)) || (down == length(NPI_R)))
                up_P2P = [up_P2P, p_R(up) + np_R(down) - 0.95*offset];
                ending = 0;
            end
            up_P2P = [up_P2P, p_R(up) + np_R(down) - 0.95*offset];
            down_P2P = [down_P2P, p_R(up + 1) + np_R(down) - 0.95*offset];
            up = up + 1;
            down = down + 1;
        end
    else
        while(ending == 1)
            %Downstroke First
            if((up == length(PI_R)) || (down+1 == length(NPI_R)))
                down_P2P = [down_P2P, p_R(up) + np_R(down) - 0.95*offset];
                ending = 0;
            end
            down_P2P = [down_P2P, p_R(up) + np_R(down) - 0.95*offset];
            up_P2P = [up_P2P, p_R(up) + np_R(down + 1) - 0.95*offset];
            up = up + 1;
            down = down + 1;
        end
    end

    % Now I have dorsal excursions and ventral excursions
    wing_movement = wing_data;
    wing_movement.up_P2P = up_P2P;
    wing_movement.down_P2P = down_P2P;
    wing_movement.dorsal_excursion = p_R;
    wing_movement.ventral_excursion = np_R - 0.95*offset;
    
    wing_movement.up_P2P_mean = mean(up_P2P);
    wing_movement.down_P2P_mean = mean(down_P2P);
    wing_movement.dorsal_excursion_mean = mean(p_R);
    wing_movement.ventral_excursion_mean = mean(np_R);

end