right_M = Right_WPSR.up_P2P_mean - Right_WPSL.up_P2P_mean;
left_M = Left_WPSR.up_P2P_mean - Left_WPSL.up_P2P_mean;
cont_M = control_WPSR.up_P2P_mean - control_WPSL.up_P2P_mean;


up_P2P_diff = [right_M, left_M, cont_M];
grp = [zeros(1, length(right_M)), ones(1, length(left_M)), ones(1, length(cont_M))*2];
f = figure;
boxplot(up_P2P_diff, grp, 'Notch', 'on', 'Labels', {'Right', 'Left', 'Control'})
title('Difference in Mean of Left - Right Peak to Peak Upstroke Amplitude');
xlabel('Treatment')
ylabel('Angle (rad)')
saveas(f, 'upP2Pstroke.eps')

% Downstroke
right_M = Right_WPSR.down_P2P_mean - Right_WPSL.down_P2P_mean;
left_M = Left_WPSR.down_P2P_mean - Left_WPSL.down_P2P_mean;
cont_M = control_WPSR.down_P2P_mean - control_WPSL.down_P2P_mean;


down_P2P_diff = [right_M, left_M, cont_M];
grp = [zeros(1, length(right_M)), ones(1, length(left_M)), ones(1, length(cont_M))*2];
f = figure;
boxplot(down_P2P_diff, grp, 'Notch', 'on', 'Labels', {'Right', 'Left', 'Control'})
title('Difference in Mean of Left - Right Peak to Peak Downstroke Amplitude');
xlabel('Treatment')
ylabel('Angle (rad)')
saveas(f, 'downP2Pstroke.eps')

% Dorsal Maxima
right_M = Right_WPSR.dorsal_excursion_mean - Right_WPSL.dorsal_excursion_mean;
left_M = Left_WPSR.dorsal_excursion_mean - Left_WPSL.dorsal_excursion_mean;
cont_M = control_WPSR.dorsal_excursion_mean - control_WPSL.dorsal_excursion_mean;

dorsal_excursion_diff = [right_M, left_M, cont_M];
grp = [zeros(1, length(right_M)), ones(1, length(left_M)), ones(1, length(cont_M))*2];
f = figure;
boxplot(dorsal_excursion_diff, grp, 'Notch', 'on', 'Labels', {'Right', 'Left', 'Control'})
title('Difference in Dorsal Peaks in Left and Right Wings');
xlabel('Treatment')
ylabel('Angle (rad)')
saveas(f, 'dorsalstroke.eps')
% Ventral Maxima
right_M = Right_WPSR.ventral_excursion_mean - Right_WPSL.ventral_excursion_mean;
left_M = Left_WPSR.ventral_excursion_mean - Left_WPSL.ventral_excursion_mean;
cont_M = control_WPSR.ventral_excursion_mean - control_WPSL.ventral_excursion_mean;

ventral_excursion_diff = [right_M, left_M, cont_M];
grp = [zeros(1, length(right_M)), ones(1, length(left_M)), ones(1, length(cont_M))*2];
f = figure;
boxplot(ventral_excursion_diff, grp, 'Notch', 'on', 'Labels', {'Right', 'Left', 'Control'})
title('Difference in ventral Peaks in Left and Right Wings');
xlabel('Treatment')
ylabel('Angle (rad)')
saveas(f, 'ventralstroke.eps')



%% DEVIATION ANGLE

right_M = Right_WPDR.up_P2P_mean - Right_WPDL.up_P2P_mean;
left_M = Left_WPDR.up_P2P_mean - Left_WPDL.up_P2P_mean;
cont_M = control_WPDR.up_P2P_mean - control_WPDL.up_P2P_mean;


up_P2P_diff = [right_M, left_M, cont_M];
grp = [zeros(1, length(right_M)), ones(1, length(left_M)), ones(1, length(cont_M))*2];
f = figure;
boxplot(up_P2P_diff, grp, 'Notch', 'on', 'Labels', {'Right', 'Left', 'Control'})
title('Difference in Mean of Left - Right Peak to Peak Up Deviation Amplitude');
xlabel('Treatment')
ylabel('Angle (rad)')
saveas(f, 'upP2Pdev.eps')

% Downstroke
right_M = Right_WPDR.down_P2P_mean - Right_WPDL.down_P2P_mean;
left_M = Left_WPDR.down_P2P_mean - Left_WPDL.down_P2P_mean;
cont_M = control_WPDR.down_P2P_mean - control_WPDL.down_P2P_mean;


down_P2P_diff = [right_M, left_M, cont_M];
grp = [zeros(1, length(right_M)), ones(1, length(left_M)), ones(1, length(cont_M))*2];
f = figure;
boxplot(down_P2P_diff, grp, 'Notch', 'on', 'Labels', {'Right', 'Left', 'Control'})
title('Difference in Mean of Left - Right Peak to Peak Down Deviation Amplitude');
xlabel('Treatment')
ylabel('Angle (rad)')
saveas(f, 'downP2Pdev.eps')

% Dorsal Maxima
right_M = Right_WPDR.dorsal_excursion_mean - Right_WPDL.dorsal_excursion_mean;
left_M = Left_WPDR.dorsal_excursion_mean - Left_WPDL.dorsal_excursion_mean;
cont_M = control_WPDR.dorsal_excursion_mean - control_WPDL.dorsal_excursion_mean;

dorsal_excursion_diff = [right_M, left_M, cont_M];
grp = [zeros(1, length(right_M)), ones(1, length(left_M)), ones(1, length(cont_M))*2];
f = figure;
boxplot(dorsal_excursion_diff, grp, 'Notch', 'on', 'Labels', {'Right', 'Left', 'Control'})
title('Difference in Dorsal Peaks in Left and Right Wing Deviation');
xlabel('Treatment')
ylabel('Angle (rad)')
saveas(f, 'dorsaldev.eps')

% Ventral Maxima
right_M = Right_WPDR.ventral_excursion_mean - Right_WPDL.ventral_excursion_mean;
left_M = Left_WPDR.ventral_excursion_mean - Left_WPDL.ventral_excursion_mean;
cont_M = control_WPDR.ventral_excursion_mean - control_WPDL.ventral_excursion_mean;

ventral_excursion_diff = [right_M, left_M, cont_M];
grp = [zeros(1, length(right_M)), ones(1, length(left_M)), ones(1, length(cont_M))*2];
f = figure;
boxplot(ventral_excursion_diff, grp, 'Notch', 'on', 'Labels', {'Right', 'Left', 'Control'})
title('Difference in ventral Peaks in Left and Right Wing Deviation');
xlabel('Treatment')
ylabel('Angle (rad)')
saveas(f, 'ventraldev.eps')
