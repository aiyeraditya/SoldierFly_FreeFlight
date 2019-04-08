[h,p] = ranksum(Right_WPSR.up_P2P_mean, Right_WPSL.up_P2P_mean)
[h,p] = ranksum(Left_WPSR.up_P2P_mean, Left_WPSL.up_P2P_mean)
[h,p] = ranksum(control_WPSR.up_P2P_mean, control_WPSL.up_P2P_mean)


[h,p] = ranksum(Right_WPSR.up_P2P_mean, Left_WPSR.up_P2P_mean)
[h,p] = ranksum(Right_WPSR.up_P2P_mean, control_WPSR.up_P2P_mean)
[h,p] = ranksum(Left_WPSR.up_P2P_mean, control_WPSR.up_P2P_mean)

[h,p] = ranksum(Right_WPSL.up_P2P_mean, Left_WPSL.up_P2P_mean)
[h,p] = ranksum(Right_WPSL.up_P2P_mean, control_WPSL.up_P2P_mean)
[h,p] = ranksum(Left_WPSL.up_P2P_mean, control_WPSL.up_P2P_mean)


%Dorsal_Excursion
[h,p] = ranksum(Right_WPSR.dorsal_excursion_mean, Right_WPSL.dorsal_excursion_mean)
[h,p] = ranksum(Left_WPSR.dorsal_excursion_mean, Left_WPSL.dorsal_excursion_mean)
[h,p] = ranksum(control_WPSR.dorsal_excursion_mean, control_WPSL.dorsal_excursion_mean)


[h,p] = ranksum(Right_WPSR.dorsal_excursion_mean, Left_WPSR.dorsal_excursion_mean)
[h,p] = ranksum(Right_WPSR.dorsal_excursion_mean, control_WPSR.dorsal_excursion_mean)
[h,p] = ranksum(Left_WPSR.dorsal_excursion_mean, control_WPSR.dorsal_excursion_mean)

[h,p] = ranksum(Right_WPSL.dorsal_excursion_mean, Left_WPSL.dorsal_excursion_mean)
[h,p] = ranksum(Right_WPSL.dorsal_excursion_mean, control_WPSL.dorsal_excursion_mean)
[h,p] = ranksum(Left_WPSL.dorsal_excursion_mean, control_WPSL.dorsal_excursion_mean)

%Ventral_Excursion
[h,p] = ranksum(Right_WPSR.ventral_excursion_mean, Right_WPSL.ventral_excursion_mean)
[h,p] = ranksum(Left_WPSR.ventral_excursion_mean, Left_WPSL.ventral_excursion_mean)
[h,p] = ranksum(control_WPSR.ventral_excursion_mean, control_WPSL.ventral_excursion_mean)


[h,p] = ranksum(Right_WPSR.ventral_excursion_mean, Left_WPSR.ventral_excursion_mean)
[h,p] = ranksum(Right_WPSR.ventral_excursion_mean, control_WPSR.ventral_excursion_mean)
[h,p] = ranksum(Left_WPSR.ventral_excursion_mean, control_WPSR.ventral_excursion_mean)

[h,p] = ranksum(Right_WPSL.ventral_excursion_mean, Left_WPSL.ventral_excursion_mean)
[h,p] = ranksum(Right_WPSL.ventral_excursion_mean, control_WPSL.ventral_excursion_mean)
[h,p] = ranksum(Left_WPSL.ventral_excursion_mean, control_WPSL.ventral_excursion_mean)



% Deviation


[h,p] = ranksum(Right_WPDR.up_P2P_mean, Right_WPDL.up_P2P_mean)
[h,p] = ranksum(Left_WPDR.up_P2P_mean, Left_WPDL.up_P2P_mean)
[h,p] = ranksum(control_WPDR.up_P2P_mean, control_WPDL.up_P2P_mean)


[h,p] = ranksum(Right_WPDR.up_P2P_mean, Left_WPDR.up_P2P_mean)
[h,p] = ranksum(Right_WPDR.up_P2P_mean, control_WPDR.up_P2P_mean)
[h,p] = ranksum(Left_WPDR.up_P2P_mean, control_WPDR.up_P2P_mean)

[h,p] = ranksum(Right_WPDL.up_P2P_mean, Left_WPDL.up_P2P_mean)
[h,p] = ranksum(Right_WPDL.up_P2P_mean, control_WPDL.up_P2P_mean)
[h,p] = ranksum(Left_WPDL.up_P2P_mean, control_WPDL.up_P2P_mean)




%Dorsal_Excursion
[h,p] = ranksum(Right_WPDR.dorsal_excursion_mean, Right_WPDL.dorsal_excursion_mean)
[h,p] = ranksum(Left_WPDR.dorsal_excursion_mean, Left_WPDL.dorsal_excursion_mean)
[h,p] = ranksum(control_WPDR.dorsal_excursion_mean, control_WPDL.dorsal_excursion_mean)


[h,p] = ranksum(Right_WPDR.dorsal_excursion_mean, Left_WPDR.dorsal_excursion_mean)
[h,p] = ranksum(Right_WPDR.dorsal_excursion_mean, control_WPDR.dorsal_excursion_mean)
[h,p] = ranksum(Left_WPDR.dorsal_excursion_mean, control_WPDR.dorsal_excursion_mean)

[h,p] = ranksum(Right_WPDL.dorsal_excursion_mean, Left_WPDL.dorsal_excursion_mean)
[h,p] = ranksum(Right_WPDL.dorsal_excursion_mean, control_WPDL.dorsal_excursion_mean)
[h,p] = ranksum(Left_WPDL.dorsal_excursion_mean, control_WPDL.dorsal_excursion_mean)

%Ventral_Excursion
[h,p] = ranksum(Right_WPDR.ventral_excursion_mean, Right_WPDL.ventral_excursion_mean)
[h,p] = ranksum(Left_WPDR.ventral_excursion_mean, Left_WPDL.ventral_excursion_mean)
[h,p] = ranksum(control_WPDR.ventral_excursion_mean, control_WPDL.ventral_excursion_mean)


[h,p] = ranksum(Right_WPDR.ventral_excursion_mean, Left_WPDR.ventral_excursion_mean)
[h,p] = ranksum(Right_WPDR.ventral_excursion_mean, control_WPDR.ventral_excursion_mean)
[h,p] = ranksum(Left_WPDR.ventral_excursion_mean, control_WPDR.ventral_excursion_mean)

[h,p] = ranksum(Right_WPDL.ventral_excursion_mean, Left_WPDL.ventral_excursion_mean)
[h,p] = ranksum(Right_WPDL.ventral_excursion_mean, control_WPDL.ventral_excursion_mean)
[h,p] = ranksum(Left_WPDL.ventral_excursion_mean, control_WPDL.ventral_excursion_mean)



upP2P = [Right_WPSR.up_P2P_mean Right_WPSL.up_P2P_mean];
upP2P = [upP2P, Left_WPSR.up_P2P_mean Left_WPSL.up_P2P_mean];
upP2P = [upP2P, control_WPSR.up_P2P_mean control_WPSL.up_P2P_mean];
grp = [zeros(1, length(Right_WPSR.up_P2P_mean)), ones(1, length(Right_WPSL.up_P2P_mean))];
grp = [grp, ones(1, length(Left_WPSR.up_P2P_mean))*2, ones(1, length(Left_WPSL.up_P2P_mean))*3];
grp = [grp, ones(1, length(control_WPSR.up_P2P_mean))*4, ones(1, length(control_WPSL.up_P2P_mean))*5];



