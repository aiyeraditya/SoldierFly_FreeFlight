data = csvread('After/Set11_Fly04_Right_F02/Fly04_Right_F02_Remasteredxyzpts.csv', 31, 0);
data = data(1:640, :);

fly_d = fly_data;
fly_d.points = data;
%[fly_d.error_right, fly_d.error_left] = Quality_Check(data, name);
[wing, ypr] = calculatestrokeangle(data);
fly_d.Rstroke = wing(:,2,2);
fly_d.Lstroke = wing(:,2,1);
fly_d.Rdev = wing(:,1,1);
fly_d.Ldev = wing(:,1,2);
fly_d.yaw = ypr(:,1);
fly_d.pitch = ypr(:,2);
fly_d.roll = ypr(:,3);

function [dorsal_excursion, ventral_excursion, up_P2P, down_P2P] = ...
    get_peak_values(stroke)
    [p_R, PI_R] = findpeaks(stroke, 'Minpeakheight', 0.01, ...
        'Minpeakdistance', 10);
    [np_R, NPI_R] = findpeaks(-1*stroke, 'Minpeakheight', 0.01, ...
        'Minpeakdistance', 10);

    ending = 1;
    up = 1;
    down = 1;
    up_P2P = [];
    down_P2P = [];

    if(PI_R(1) < NPI_R(1))
        while(ending == 1)
            % Upstroke First
            if((up+1 == length(PI_R)) || (down == length(NPI_R)))
                up_P2P = [up_P2P, p_R(up) + np_R(down)];
                ending = 0;
            end
            up_P2P = [up_P2P, p_R(up) + np_R(down)];
            down_P2P = [down_P2P, p_R(up + 1) + np_R(down)];
            up = up + 1;
            down = down + 1;
        end
    else
        while(ending == 1)
            %Downstroke First
            if((up == length(PI_R)) || (down+1 == length(NPI_R)))
                down_P2P = [down_P2P, p_R(up) + np_R(down)];
                ending = 0;
            end
            down_P2P = [down_P2P, p_R(up) + np_R(down)];
            up_P2P = [up_P2P, p_R(up) + np_R(down + 1)];
            up = up + 1;
            down = down + 1;
        end
    end

    % Now I have dorsal excursions and ventral excursions
    dorsal_excursion = p_R;
    ventral_excursion = np_R;

end

figure;
plot(fly_d.Rstroke)
hold on;
plot(PI_R, p_R, 'r*')
plot(NPI_R, -1*np_R, 'bo')
hold off;


figure;
for i = 1:length(control)
    length(control(i).pitch)
end
hold off;






