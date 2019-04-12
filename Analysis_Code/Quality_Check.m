%% Aditya Iyer 05 April 2019
%%%%

% This function calculates the standard deviations in distribution
% of wing lengths and saves its plot. 

%%%%%%%%

function [error_right, error_left] = Quality_Check(data, name)
    r = data(:, 4:6) - data(:, 10:12);
    diff(:) = r(:,1).*r(:,1) + r(:,2).*r(:,2) + r(:,3).*r(:,3);
    d = sqrt(diff);
    d1 = rmmissing(d);
    error_right = std(d1)/mean(d1);
    f = figure('visible','off');
    plot(d1);
    title('Right Wing Length Variation: Error-> ' + string(error_right))
    ylabel('Right Wing Length (m)')
    xlabel('Frame Number')
    savnam = 'Each_Fly_Plot/' + string(name) + 'right_variation.eps';
    saveas(f,savnam)
    
    r = data(:, 7:9) - data(:, 13:15);
    diff(:) = r(:,1).*r(:,1) + r(:,2).*r(:,2) + r(:,3).*r(:,3);
    d = sqrt(diff);
    d1 = rmmissing(d);
    error_left = std(d1)/mean(d1);
    f = figure('visible','off');
    plot(d1);
    title('Left Wing Length Variation: Error-> ' + string(error_left))
    ylabel('Left Wing Length (m)')
    xlabel('Frame Number')
    savnam = 'Each_Fly_Plot/' + string(name) + 'left_variation.eps';
    saveas(f,savnam)
end
