right_M = Right_WPDR.up_P2P_mean - Right_WPDL.up_P2P_mean;
left_M = Left_WPDR.up_P2P_mean - Left_WPDL.up_P2P_mean;
cont_M = control_WPDR.up_P2P_mean - control_WPDL.up_P2P_mean;


up_P2P_diff = [right_M, left_M, cont_M];
grp = [zeros(1, length(right_M)), ones(1, length(left_M)), ones(1, length(cont_M))*2];
figure;
boxplot(up_P2P_diff, grp, 'Notch', 'on', 'Labels', {'Right', 'Left', 'Control'})
title('Difference in Mean of Left - Right Peak to Peak Up Deviation Amplitude');

% Downstroke
right_M = Right_WPDR.down_P2P_mean - Right_WPDL.down_P2P_mean;
left_M = Left_WPDR.down_P2P_mean - Left_WPDL.down_P2P_mean;
cont_M = control_WPDR.down_P2P_mean - control_WPDL.down_P2P_mean;


down_P2P_diff = [right_M, left_M, cont_M];
grp = [zeros(1, length(right_M)), ones(1, length(left_M)), ones(1, length(cont_M))*2];
figure;
boxplot(down_P2P_diff, grp, 'Notch', 'on', 'Labels', {'Right', 'Left', 'Control'})
title('Difference in Mean of Left - Right Peak to Peak Down Deviation Amplitude');


% Dorsal Maxima
right_M = Right_WPDR.dorsal_excursion_mean - Right_WPDL.dorsal_excursion_mean;
left_M = Left_WPDR.dorsal_excursion_mean - Left_WPDL.dorsal_excursion_mean;
cont_M = control_WPDR.dorsal_excursion_mean - control_WPDL.dorsal_excursion_mean;

dorsal_excursion_diff = [right_M, left_M, cont_M];
grp = [zeros(1, length(right_M)), ones(1, length(left_M)), ones(1, length(cont_M))*2];
figure;
boxplot(dorsal_excursion_diff, grp, 'Notch', 'on', 'Labels', {'Right', 'Left', 'Control'})
title('Difference in Dorsal Peaks in Left and Right Wing Deviation');

% Ventral Maxima
right_M = Right_WPDR.ventral_excursion_mean - Right_WPDL.ventral_excursion_mean;
left_M = Left_WPDR.ventral_excursion_mean - Left_WPDL.ventral_excursion_mean;
cont_M = control_WPDR.ventral_excursion_mean - control_WPDL.ventral_excursion_mean;

ventral_excursion_diff = [right_M, left_M, cont_M];
grp = [zeros(1, length(right_M)), ones(1, length(left_M)), ones(1, length(cont_M))*2];
figure;
boxplot(ventral_excursion_diff, grp, 'Notch', 'on', 'Labels', {'Right', 'Left', 'Control'})
title('Difference in ventral Peaks in Left and Right Wing Deviation');












figure;
for i = 1:length(Right)
    plot((1:length(Right(i).roll))/2.8,Right(i).roll*180/pi, 'r')
    hold on;
    length(Right(i).roll)
end
for i = 1:length(Left)
    plot((1:length(Left(i).roll))/2.8, Left(i).roll*180/pi, 'b')
    hold on;
    length(Left(i).roll)
end
for i = 1:length(control)
    plot((1:length(control(i).roll))/2.8, control(i).roll*180/pi, 'k')
    hold on;
    length(control(i).roll)
end
title('Time Evolution of Roll Angles Across all Flies', 'fontsize', 18)
xlabel('Time (ms)');
ylabel('Roll Angle (Degrees)')
hold off;

figure;
for i = 1:length(Right)
    plot((1:length(Right(i).pitch))/2.8, Right(i).pitch*180/pi, 'r')
    hold on;
    length(Right(i).pitch)
end
for i = 1:length(Left)
    plot((1:length(Left(i).pitch))/2.8,Left(i).pitch*180/pi, 'b')
    hold on;
    length(Left(i).pitch)
end
for i = 1:length(control)
    plot((1:length(control(i).pitch))/2.8,control(i).pitch*180/pi, 'k')
    hold on;
    length(control(i).pitch)
end
title('Time Evolution of Pitch Angles Across all Flies', 'fontsize', 18)
xlabel('Time (ms)');
ylabel('Pitch Angle (Degrees)')
hold off;


figure;
for i = 1:length(Right)
    for j = 1:length(Right(i).yaw)-1
        if(Right(i).yaw(j) - Right(i).yaw(j+1) > pi)
            Right(i).yaw(j+1) = Right(i).yaw(j+1) + 2*pi;
        elseif(Right(i).yaw(j) - Right(i).yaw(j+1) < -1*pi)
            Right(i).yaw(j+1) = Right(i).yaw(j+1) - 2*pi;
        end
    end
    if(i == length(Right) - 1)
        Right(i).yaw = Right(i).yaw + 2*pi;
    end
    plot((1:length(Right(i).yaw))/2.8,Right(i).yaw*180/pi, 'r')
    hold on;
    length(Right(i).yaw)
end
for i = 1:length(Left)
    for j = 1:length(Left(i).yaw)-1
        if(Left(i).yaw(j) - Left(i).yaw(j+1) > pi)
            Left(i).yaw(j+1) = Left(i).yaw(j+1) + 2*pi;
        elseif(Left(i).yaw(j) - Left(i).yaw(j+1) < -1*pi)
            Left(i).yaw(j+1) = Left(i).yaw(j+1) - 2*pi;
        end
    end
    if(i == length(Left))
        Left(i).yaw = Left(i).yaw - 2*pi;
    end
    plot((1:length(Left(i).yaw))/2.8, Left(i).yaw*180/pi, 'b')
    hold on;
    length(Left(i).yaw)
end
for i = 1:length(control)
    for j = 1:length(control(i).yaw)-1
        if(control(i).yaw(j) - control(i).yaw(j+1) > pi)
            control(i).yaw(j+1) = control(i).yaw(j+1) + 2*pi;
        elseif(control(i).yaw(j) - control(i).yaw(j+1) < -1*pi)
            control(i).yaw(j+1) = control(i).yaw(j+1) - 2*pi;
        end
    end
    plot((1:length(control(i).yaw))/2.8, control(i).yaw*180/pi, 'k')
    hold on;
    length(control(i).yaw)
end
title('Time Evolution of Pitch Angles Across all Flies', 'fontsize', 18)
xlabel('Time (ms)');
ylabel('Pitch Angle (Degrees)')
hold off;




slopes = [];
intercepts = []
for i = 1:length(Right)
    p = polyfit(1:length(Right(i).roll),Right(i).roll,1);
    slopes = [slopes, p(1)];
    intercepts = [intercepts, p(2)];
end
for i = 1:length(Left)
    p = polyfit(1:length(Left(i).roll),Left(i).roll,1);
    slopes = [slopes, p(1)];
    intercepts = [intercepts, p(2)];
end
for i = 1:length(control)
    p = polyfit(1:length(control(i).roll),control(i).roll,1);
    slopes = [slopes, p(1)];
    intercepts = [intercepts, p(2)];
end
figure
grp = [zeros(1, length(Right)), ones(1, length(Left)), ones(1, length(control))*2];
hold on;
scatter(grp+1, slopes*2.8);
boxplot(slopes*2.8, grp, 'Labels', {'Right', 'Left', 'Control'})
title({'Variation in Slopes of Linear Regressions','of Roll Angles'}, 'fontsize', 18)
xlabel('Treatment')
ylabel('Slopes of Linear Regression of Roll Angle (rad/ms)')
hold off;

figure
x = 1:800;
for i = 1:length(Right)
    plot(x/2.8, slopes(i)*x + intercepts(i), 'r')
    hold on;
end
for i = 1:length(Left)
    plot(x/2.8, slopes(i+length(Right))*x + intercepts(i+length(Right)), 'b')
    hold on;
end
for i = (length(Left) + length(Right)):(length(control)+length(Left)+length(Right))
    plot(x/2.8, slopes(i)*x + intercepts(i), 'k')
    hold on;
end
xlabel('Time(ms)')
ylabel('Roll Angle (rad)')
title('Linear Regression Fit of Roll Angles', 'fontsize', 18)



slopes = [];
intercepts = [];
for i = 1:length(Right)
    p = polyfit(1:length(Right(i).pitch),Right(i).pitch,1);
    slopes = [slopes, p(1)];
    intercepts = [intercepts, p(2)];
end
for i = 1:length(Left)
    p = polyfit(1:length(Left(i).pitch),Left(i).pitch,1);
    slopes = [slopes, p(1)];
    intercepts = [intercepts, p(2)];
end
for i = 1:length(control)
    p = polyfit(1:length(control(i).pitch),control(i).pitch,1);
    slopes = [slopes, p(1)];
    intercepts = [intercepts, p(2)];
end
figure
grp = [zeros(1, length(Right)), ones(1, length(Left)), ones(1, length(control))*2];
hold on;
scatter(grp+1, slopes*2.8);
boxplot(slopes*2.8, grp, 'Labels', {'Right', 'Left', 'Control'})
title({'Variation in Slopes of Linear Regressions','of Pitch Angles'}, 'fontsize', 18)
xlabel('Treatment', 'fontsize', 14)
ylabel('Slopes of Linear Regression of Pitch Angle (rad/ms)', 'fontsize', 14)
hold off;

figure
x = 1:800;
for i = 1:length(Right)
    plot(x/2.8, slopes(i)*x + intercepts(i), 'r')
    hold on;
end
for i = 1:length(Left)
    plot(x/2.8, slopes(i+length(Right))*x + intercepts(i+length(Right)), 'b')
    hold on;
end
for i = (length(Left) + length(Right)):(length(control)+length(Left)+length(Right))
    plot(x/2.8, slopes(i)*x + intercepts(i), 'k')
    hold on;
end
xlabel('Time(ms)', 'fontsize', 14)
ylabel('Pitch Angle (rad)', 'fontsize', 14)
title('Linear Regression Fit of pitch Angles', 'fontsize', 18)


slopes = [];
intercepts = [];
for i = 1:length(Right)
    p = polyfit(1:length(Right(i).yaw),Right(i).yaw,1);
    slopes = [slopes, p(1)];
    intercepts = [intercepts, p(2)];
end
for i = 1:length(Left)
    p = polyfit(1:length(Left(i).yaw),Left(i).yaw,1);
    slopes = [slopes, p(1)];
    intercepts = [intercepts, p(2)];
end
for i = 1:length(control)
    p = polyfit(1:length(control(i).yaw),control(i).yaw,1);
    slopes = [slopes, p(1)];
    intercepts = [intercepts, p(2)];
end
figure
grp = [zeros(1, length(Right)), ones(1, length(Left)), ones(1, length(control))*2];
hold on;
scatter(grp+1, slopes*2.8);
boxplot(slopes*2.8, grp, 'Labels', {'Right', 'Left', 'Control'})
title({'Variation in Slopes of Linear Regressions','of Yaw Angles'}, 'fontsize', 18)
xlabel('Treatment', 'fontsize', 14)
ylabel('Slopes of Linear Regression of Yaw Angle (rad/ms)', 'fontsize', 14)
hold off;

figure
x = 1:800;
for i = 1:length(Right)
    plot(x/2.8, slopes(i)*x + intercepts(i), 'r')
    hold on;
end
for i = 1:length(Left)
    plot(x/2.8, slopes(i+length(Right))*x + intercepts(i+length(Right)), 'b')
    hold on;
end
for i = (length(Left) + length(Right)):(length(control)+length(Left)+length(Right))
    plot(x/2.8, slopes(i)*x + intercepts(i), 'k')
    hold on;
end
xlabel('Time(ms)', 'fontsize', 14)
ylabel('Yaw Angle (rad)', 'fontsize', 14)
title('Linear Regression Fit of Yaw Angles', 'fontsize', 18)

