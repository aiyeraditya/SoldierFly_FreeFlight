right_M = Right_WPSR.up_P2P_mean - Right_WPSL.up_P2P_mean;
left_M = Left_WPSR.up_P2P_mean - Left_WPSL.up_P2P_mean;
cont_M = control_WPSR.up_P2P_mean - control_WPSL.up_P2P_mean;


up_P2P_diff = [right_M, left_M, cont_M];
grp = [zeros(1, length(right_M)), ones(1, length(left_M)), ones(1, length(cont_M))*2];
f = figure;
boxplot(up_P2P_diff, grp,'Labels', {'Right', 'Left', 'Control'})
title({'Difference in Mean of Left and Right Wing','Peak to Peak Upstroke Amplitude'}, 'fontsize', 14);
xlabel('Treatment', 'fontsize', 14)
ylabel('Angle (rad)', 'fontsize', 14)
hold on;
scatter(grp + 1, up_P2P_diff)
saveas(f, 'upP2Pstroke.png')


% Dorsal Maxima
right_M = Right_WPSR.dorsal_excursion_mean - Right_WPSL.dorsal_excursion_mean;
left_M = Left_WPSR.dorsal_excursion_mean - Left_WPSL.dorsal_excursion_mean;
cont_M = control_WPSR.dorsal_excursion_mean - control_WPSL.dorsal_excursion_mean;

dorsal_excursion_diff = [right_M, left_M, cont_M];
grp = [zeros(1, length(right_M)), ones(1, length(left_M)), ones(1, length(cont_M))*2];
f = figure;
boxplot(dorsal_excursion_diff, grp, 'Labels', {'Right', 'Left', 'Control'})
title({'Difference in Dorsal Peaks of Stroke Angles in',' Left and Right Wings'}, 'fontsize', 18);
xlabel('Treatment', 'fontsize', 14)
ylabel('Angle (rad)', 'fontsize', 14)
hold on;
scatter(grp + 1, dorsal_excursion_diff)
saveas(f, 'dorsalstroke.png')


% Ventral Maxima
right_M = Right_WPSR.ventral_excursion_mean - Right_WPSL.ventral_excursion_mean;
left_M = Left_WPSR.ventral_excursion_mean - Left_WPSL.ventral_excursion_mean;
cont_M = control_WPSR.ventral_excursion_mean - control_WPSL.ventral_excursion_mean;

ventral_excursion_diff = [right_M, left_M, cont_M];
grp = [zeros(1, length(right_M)), ones(1, length(left_M)), ones(1, length(cont_M))*2];
f = figure;
boxplot(ventral_excursion_diff, grp, 'Labels', {'Right', 'Left', 'Control'})
title({'Difference in ventral Peaks of Stroke Angles in','Left and Right Wings'}, 'fontsize', 18);
xlabel('Treatment', 'fontsize', 14)
ylabel('Angle (rad)', 'fontsize', 14)
hold on;
scatter(grp + 1, ventral_excursion_diff)
saveas(f, 'ventralstroke.png')



%% DEVIATION ANGLE

right_M = Right_WPDR.up_P2P_mean - Right_WPDL.up_P2P_mean;
left_M = Left_WPDR.up_P2P_mean - Left_WPDL.up_P2P_mean;
cont_M = control_WPDR.up_P2P_mean - control_WPDL.up_P2P_mean;


up_P2P_diff = [right_M, left_M, cont_M];
grp = [zeros(1, length(right_M)), ones(1, length(left_M)), ones(1, length(cont_M))*2];
f = figure;
boxplot(up_P2P_diff, grp, 'Labels', {'Right', 'Left', 'Control'})
title({'Difference in Mean of Left and Right Wing','Peak to Peak Up Deviation Amplitude'}, 'fontsize', 18);
xlabel('Treatment', 'fontsize', 14)
ylabel('Angle (rad)', 'fontsize', 14)
hold on;
scatter(grp + 1, up_P2P_diff)
saveas(f, 'upP2Pdev.png')


% Dorsal Maxima
right_M = Right_WPDR.dorsal_excursion_mean - Right_WPDL.dorsal_excursion_mean;
left_M = Left_WPDR.dorsal_excursion_mean - Left_WPDL.dorsal_excursion_mean;
cont_M = control_WPDR.dorsal_excursion_mean - control_WPDL.dorsal_excursion_mean;

dorsal_excursion_diff = [right_M, left_M, cont_M];
grp = [zeros(1, length(right_M)), ones(1, length(left_M)), ones(1, length(cont_M))*2];
f = figure;
boxplot(dorsal_excursion_diff, grp, 'Labels', {'Right', 'Left', 'Control'})
title({'Difference in Dorsal Excursion Peaks of Deviation ','Angles in Left and Right Wings'}, 'fontsize', 18);
xlabel('Treatment', 'fontsize', 14)
ylabel('Angle (rad)', 'fontsize', 14)
hold on;
scatter(grp + 1, dorsal_excursion_diff)
saveas(f, 'dorsaldev.png')

% Ventral Maxima
right_M = Right_WPDR.ventral_excursion_mean - Right_WPDL.ventral_excursion_mean;
left_M = Left_WPDR.ventral_excursion_mean - Left_WPDL.ventral_excursion_mean;
cont_M = control_WPDR.ventral_excursion_mean - control_WPDL.ventral_excursion_mean;

ventral_excursion_diff = [right_M, left_M, cont_M];
grp = [zeros(1, length(right_M)), ones(1, length(left_M)), ones(1, length(cont_M))*2];
f = figure;
boxplot(ventral_excursion_diff, grp, 'Labels', {'Right', 'Left', 'Control'})
title({'Difference in Ventral Excursion Peaks of Deviation','Angles in Left and Right Wings'}, 'fontsize', 14);
xlabel('Treatment', 'fontsize', 14)
ylabel('Angle (rad)', 'fontsize', 14)
hold on;
scatter(grp + 1, ventral_excursion_diff)
saveas(f, 'ventraldev.png')
