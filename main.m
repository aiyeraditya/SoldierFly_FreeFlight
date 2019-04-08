%Load the Rotation Matrices and Origins for each set here
load('/Users/python/Desktop/digitised/05Mar_transform.mat') %Set11
load('/Users/python/Desktop/digitised/28Feb_transform.mat') %Set10
load('/Users/python/Desktop/digitised/07Feb_Transform.mat') %Set4
load('/Users/python/Desktop/digitised/14Feb_Transform.mat') %Set5
origin_Set11 = [0,0,0];
origin_Set10 = [0,0,0];
origin_Set04 = [0,0,0];
origin_Set05 = [0,0,0];


%Right
data = csvread('After/Set11_Fly04_Right_F02/Fly04_Right_F02_Remasteredxyzpts.csv', 31, 0);
data = data(1:640, :);
data = transform_data(data, transformation_matrix_05March, origin_Set11 );
%check_smooth(data);
Set11_Fly04_Right = get_variables(data, 'Set11_Fly04_Right_F02');

data = csvread('After/Set11_Fly06_Right_F01/Fly06_Right_F01_Remasteredxyzpts.csv', 51, 0);
data = transform_data(data, transformation_matrix_05March, origin_Set11 );
%check_smooth(data);
%[er1, er2] = Quality_Check(data, 'Set11_Fly06_Right_F06');
Set11_Fly06_Right_F06 = get_variables(data, 'Set11_Fly06_Right_F06');


data = csvread('After/Set04_Fly03_Right_F02/Fly03_Right_F02_Remasteredxyzpts.csv', 61, 0);
data = transform_data(data, transformation_07Feb , origin_Set04);
%check_smooth(data);
%[er1, er2] = Quality_Check(data, 'Set04_Fly03_Right_F02');
Set04_Fly03_Right_F02 = get_variables(data, 'Set04_Fly03_Right_F02');


data = csvread('After/Set04_Fly05_Right_F02/Fly05_Right_F02_Remasteredxyzpts.csv', 81, 0);
data = transform_data(data, transformation_07Feb , origin_Set04 );
%check_smooth(data);
%[er1, er2] = Quality_Check(data, 'Set04_Fly05_Right_F02');
Set04_Fly05_Right_F02 = get_variables(data, 'Set04_Fly05_Right_F02');


data = csvread('After/Set05_Fly05_Right_F03/Fly05_Right_F03_Remasteredxyzpts.csv', 111, 0);
data = transform_data(data, transformation_matrix_14Feb , origin_Set05 );
%check_smooth(data);
%[er1, er2] = Quality_Check(data, 'Set05_Fly05_Right_F03');
Set05_Fly05_Right_F03 = get_variables(data, 'Set05_Fly05_Right_F03');

data = csvread('After/Set05_Fly07_Right_F02/Fly07_Right_F02_Remasteredxyzpts.csv', 71, 0);
data = transform_data(data, transformation_matrix_14Feb , origin_Set05 );
%check_smooth(data);
%[er1, er2] = Quality_Check(data, 'Set05_Fly07_Right_F02'); % points_redo
Set05_Fly07_Right_F02 = get_variables(data, 'Set05_Fly07_Right_F02');

data = csvread('After/Set10_Fly05_Right_F03/Fly05_Right_F03_Remasteredxyzpts.csv',17, 0);
data = transform_data(data, transformation_matrix_28Feb_Set10, ...
    origin_Set10 );
%check_smooth(data);
%[er1, er2] = Quality_Check(data, 'Set10_Fly05_Right_F03');
Set10_Fly05_Right_F03 = get_variables(data, 'Set10_Fly05_Right_F03');

Right = [Set11_Fly04_Right, Set11_Fly06_Right_F06,...
    Set04_Fly03_Right_F02, Set04_Fly05_Right_F02, ...
    Set05_Fly05_Right_F03,  Set05_Fly07_Right_F02, ...
         Set10_Fly05_Right_F03];
     

% Left
data = csvread('After/Set11_Fly02_Left_F02/Fly02_Left_F02_Remasteredxyzpts.csv', 51, 0);
data = transform_data(data, transformation_matrix_05March, origin_Set11 );
%check_smooth(data);
%[er1, er2] = Quality_Check(data, 'Set11_Fly02_Left_F02');
Set11_Fly02_Left_F02 = get_variables(data, 'Set11_Fly02_Left_F02');


data = csvread('After/Set11_Fly03_Left_F02/Fly03_Left_F02_Remasteredxyzpts.csv',1, 0);
data = transform_data(data, transformation_matrix_05March , origin_Set11);
%check_smooth(data);
%[er1, er2] = Quality_Check(data, 'Set11_Fly03_Left_F02');
Set11_Fly03_Left_F02 = get_variables(data, 'Set11_Fly03_Left_F02');


data = csvread('After/Set04_Fly02_Left_F03/Fly02_Left_F03_Remasteredxyzpts.csv', 101, 0);
data = transform_data(data, transformation_07Feb , origin_Set04);
%check_smooth(data);
%[er1, er2] = Quality_Check(data, 'Set11_Fly05_Control_F01');
Set11_Fly05_Control_F01 = get_variables(data, 'Set11_Fly05_Control_F01');


data = csvread('After/Set04_Fly04_Left_F02/Fly04_Left_F02_Remasteredxyzpts.csv', 101, 0);
data = transform_data(data, transformation_07Feb , origin_Set04);
%check_smooth(data);
%[er1, er2] = Quality_Check(data, 'Set04_Fly04_Left_F02');
Set04_Fly04_Left_F02 = get_variables(data, 'Set04_Fly04_Left_F02');


data = csvread('After/Set05_Fly02_Left_F02/Fly02_Left_F02_Remasteredxyzpts.csv', 221, 0);
data = transform_data(data, transformation_matrix_14Feb , origin_Set05 );
%check_smooth(data);
%[er1, er2] = Quality_Check(data, 'Set05_Fly02_Left_F02');
Set05_Fly02_Left_F02 = get_variables(data, 'Set05_Fly02_Left_F02');


data = csvread('After/Set05_Fly03_Left_F02/Fly03_Left_F02_Remasteredxyzpts.csv', 101, 0);
data = transform_data(data, transformation_matrix_14Feb , origin_Set05 );
%check_smooth(data);
%[er1, er2] = Quality_Check(data, 'Set05_Fly03_Left_F02');
Set05_Fly03_Left_F02 = get_variables(data, 'Set05_Fly03_Left_F02');


data = csvread('After/Set10_Fly06_Left_F01/Fly06_Left_F01_Remasteredxyzpts.csv',46, 0);
data = transform_data(data, transformation_matrix_28Feb_Set10 , origin_Set10 );
%check_smooth(data);
%[er1, er2] = Quality_Check(data, 'Set10_Fly06_Left_F01');
Set10_Fly06_Left_F01 = get_variables(data, 'Set10_Fly06_Left_F01');


% data = csvread('After/Set10_Fly10_Left_F01/Fly10_Left_F01_'...
%     'Remasteredxyzpts.csv', 31, 0);
% data = transform_data(data, transformation_matrix_28Feb_Set10 , origin_Set10 );
% %check_smooth(data);
% %[er1, er2] = Quality_Check(data, 'Set10_Fly10_Left_F01');
% Set10_Fly10_Left_F01 = get_variables(data, 'Set10_Fly10_Left_F01');

Left = [Set10_Fly06_Left_F01, Set05_Fly03_Left_F02, ...
    Set05_Fly02_Left_F02, Set04_Fly04_Left_F02, Set11_Fly05_Control_F01, ...
    Set11_Fly03_Left_F02, Set11_Fly02_Left_F02];


%LeftHaltereAblated = findmeans(Left); I need a function that helps in
% doing both stroke and deviation

% Control
data = csvread('After/Set11_Fly05_Control_F01/Fly05_Control_F01_Remastered1xyzpts.csv', 51, 0);
data = transform_data(data, transformation_matrix_05March , origin_Set11);
%check_smooth(data);
%[er1, er2] = Quality_Check(data, 'Set11_Fly05_Control_F01');
Set11_Fly05_Control_F01 = get_variables(data, 'Set11_Fly05_Control_F01');


data = csvread('After/Set04_Fly01_Control_F01/Fly01_Control_F01_Remasteredxyzpts.csv', 301, 0);
data = transform_data(data, transformation_07Feb , origin_Set04 );
%check_smooth(data);
%[er1, er2] = Quality_Check(data, 'Set04_Fly01_Control_F01');
Set04_Fly01_Control_F01 = get_variables(data, 'Set04_Fly01_Control_F01');


data = csvread('After/Set04_Fly07_Control_F01/Fly07_Control_F01_Remasteredxyzpts.csv', 41, 0);
data = transform_data(data, transformation_07Feb , origin_Set04 );
%check_smooth(data);
%[er1, er2] = Quality_Check(data, 'Set04_Fly07_Control_F01');
Set04_Fly07_Control_F01 = get_variables(data, 'Set04_Fly07_Control_F01');


data = csvread('After/Set10_Fly08_Control_F01/Fly08_Control_F01_Remasteredxyzpts.csv',15, 0);
data = transform_data(data, transformation_matrix_28Feb_Set10 , origin_Set10 );
%check_smooth(data);
%[er1, er2] = Quality_Check(data, 'Set10_Fly08_Control_F01');
Set10_Fly08_Control_F01 = get_variables(data, 'Set10_Fly08_Control_F01');

data = csvread('After/Set10_Fly01_Control_F01/Fly01_Control_F01_Remasteredxyzpts.csv',101, 0);
data = transform_data(data, transformation_matrix_28Feb_Set10 , origin_Set10);
%check_smooth(data);
%[er1, er2] = Quality_Check(data, 'Set10_Fly01_Control_F01');
Set10_Fly01_Control_F01 = get_variables(data, 'Set10_Fly01_Control_F01');

data = csvread('After/Set10_Fly03_Control_F01/Fly03_Control_F01_Remasteredxyzpts.csv',21, 0);
data = transform_data(data, transformation_matrix_28Feb_Set10 , origin_Set10 );
%check_smooth(data);
%[er1, er2] = Quality_Check(data, 'Set10_Fly03_Control_F01');
Set10_Fly03_Control_F01 = get_variables(data, 'Set10_Fly03_Control_F01');

control = [Set10_Fly03_Control_F01, Set10_Fly01_Control_F01, ...
    Set10_Fly08_Control_F01, Set04_Fly07_Control_F01, ...
    Set04_Fly01_Control_F01, Set11_Fly05_Control_F01];


% data = csvread('After/Set01_Fly02_Control_F02/Dataxyzpts.csv',136, 0);
% data = transform_data(data, matrix_ , origin_ );
% %check_smooth(data);
% %[er1, er2] = Quality_Check(data, 'Set01_Fly02_Control_F02');


% I have left, control and right now. Let's make plots.
f = figure;
for i = 1:length(Right)
    plot((1:length(Right(i).roll))/2.8, Right(i).roll, 'r')
    hold on;
end
for i = 1:length(Left) - 1
    plot((1:length(Left(i).roll))/2.8, Left(i).roll, 'b')
    hold on;
end
for i = 1:length(control)
    plot((1:length(control(i).roll))/2.8, control(i).roll, 'k')
end
hold off;
title('Roll Variation');
xlabel('Time(ms)')
ylabel('Angle(rad)')
saveas(f, 'RollVariation.png')

f = figure;
for i = 1:length(Right)
    plot((1:length(Right(i).pitch))/2.8, Right(i).pitch, 'r')
    hold on;
end
for i = 1:length(Left)
    plot((1:length(Left(i).pitch))/2.8, Left(i).pitch, 'b')
    hold on;
end
for i = [1,3,4,5,6]
    plot((1:length(control(i).pitch))/2.8, control(i).pitch, 'k')
end
hold off;
title('Pitch Variation')
xlabel('Time(ms)')
ylabel('Angle(rad)')
saveas(f, 'Pitchvariation.png')

% Let's compare stuff:
Right_WPSR = wing_data();
Right_WPSL = wing_data();
for i = 1:length(Right)
    Right_WPSR.up_P2P_mean = [Right_WPSR.up_P2P_mean,...
        Right(i).Rst_param.up_P2P_mean];
    Right_WPSL.up_P2P_mean = [Right_WPSL.up_P2P_mean,...
        Right(i).Lst_param.up_P2P_mean];
   
    Right_WPSR.ventral_excursion_mean = [Right_WPSR.ventral_excursion_mean,...
        Right(i).Rst_param.ventral_excursion_mean];
    Right_WPSL.ventral_excursion_mean = [Right_WPSL.ventral_excursion_mean,...
        Right(i).Lst_param.ventral_excursion_mean];
    
    Right_WPSR.dorsal_excursion_mean = [Right_WPSR.dorsal_excursion_mean,...
        Right(i).Rst_param.dorsal_excursion_mean];
    Right_WPSL.dorsal_excursion_mean = [Right_WPSL.dorsal_excursion_mean,...
        Right(i).Lst_param.dorsal_excursion_mean];    
    
end
Left_WPSR = wing_data();
Left_WPSL = wing_data();
for i = 1:length(Left)
    Left_WPSR.up_P2P_mean = [Left_WPSR.up_P2P_mean,...
        Left(i).Rst_param.up_P2P_mean];
    Left_WPSL.up_P2P_mean = [Left_WPSL.up_P2P_mean,...
        Left(i).Lst_param.up_P2P_mean];
    
    Left_WPSR.ventral_excursion_mean = [Left_WPSR.ventral_excursion_mean,...
        Left(i).Rst_param.ventral_excursion_mean];
    Left_WPSL.ventral_excursion_mean = [Left_WPSL.ventral_excursion_mean,...
        Left(i).Lst_param.ventral_excursion_mean];
    
    Left_WPSR.dorsal_excursion_mean = [Left_WPSR.dorsal_excursion_mean,...
        Left(i).Rst_param.dorsal_excursion_mean];
    Left_WPSL.dorsal_excursion_mean = [Left_WPSL.dorsal_excursion_mean,...
        Left(i).Lst_param.dorsal_excursion_mean];  

end

control_WPSR = wing_data();
control_WPSL = wing_data();
for i = 1:length(control)
    control_WPSR.up_P2P_mean = [control_WPSR.up_P2P_mean,...
        control(i).Rst_param.up_P2P_mean];
    control_WPSL.up_P2P_mean = [control_WPSL.up_P2P_mean,...
        control(i).Lst_param.up_P2P_mean];
    
    control_WPSR.ventral_excursion_mean = [control_WPSR.ventral_excursion_mean,...
        control(i).Rst_param.ventral_excursion_mean];
    control_WPSL.ventral_excursion_mean = [control_WPSL.ventral_excursion_mean,...
        control(i).Lst_param.ventral_excursion_mean];
    
    control_WPSR.dorsal_excursion_mean = [control_WPSR.dorsal_excursion_mean,...
        control(i).Rst_param.dorsal_excursion_mean];
    control_WPSL.dorsal_excursion_mean = [control_WPSL.dorsal_excursion_mean,...
        control(i).Lst_param.dorsal_excursion_mean];      
end

Right_WPDR = wing_data();
Right_WPDL = wing_data();
for i = 1:length(Right)
    Right_WPDR.up_P2P_mean = [Right_WPDR.up_P2P_mean,...
        Right(i).Rdev_param.up_P2P_mean];
    Right_WPDL.up_P2P_mean = [Right_WPDL.up_P2P_mean,...
        Right(i).Ldev_param.up_P2P_mean];
    
    Right_WPDR.ventral_excursion_mean = [Right_WPDR.ventral_excursion_mean,...
        Right(i).Rdev_param.ventral_excursion_mean];
    Right_WPDL.ventral_excursion_mean = [Right_WPDL.ventral_excursion_mean,...
        Right(i).Ldev_param.ventral_excursion_mean];
    
    Right_WPDR.dorsal_excursion_mean = [Right_WPDR.dorsal_excursion_mean,...
        Right(i).Rdev_param.dorsal_excursion_mean];
    Right_WPDL.dorsal_excursion_mean = [Right_WPDL.dorsal_excursion_mean,...
        Right(i).Ldev_param.dorsal_excursion_mean];    
    
end
Left_WPDR = wing_data();
Left_WPDL = wing_data();
for i = 1:length(Left)
    Left_WPDR.up_P2P_mean = [Left_WPDR.up_P2P_mean,...
        Left(i).Rdev_param.up_P2P_mean];
    Left_WPDL.up_P2P_mean = [Left_WPDL.up_P2P_mean,...
        Left(i).Ldev_param.up_P2P_mean];
    
    Left_WPDR.ventral_excursion_mean = [Left_WPDR.ventral_excursion_mean,...
        Left(i).Rdev_param.ventral_excursion_mean];
    Left_WPDL.ventral_excursion_mean = [Left_WPDL.ventral_excursion_mean,...
        Left(i).Ldev_param.ventral_excursion_mean];
    
    Left_WPDR.dorsal_excursion_mean = [Left_WPDR.dorsal_excursion_mean,...
        Left(i).Rdev_param.dorsal_excursion_mean];
    Left_WPDL.dorsal_excursion_mean = [Left_WPDL.dorsal_excursion_mean,...
        Left(i).Ldev_param.dorsal_excursion_mean];  

end

control_WPDR = wing_data();
control_WPDL = wing_data();
for i = 1:length(control)
    control_WPDR.up_P2P_mean = [control_WPDR.up_P2P_mean,...
        control(i).Rdev_param.up_P2P_mean];
    control_WPDL.up_P2P_mean = [control_WPDL.up_P2P_mean,...
        control(i).Ldev_param.up_P2P_mean];
    
    control_WPDR.ventral_excursion_mean = [control_WPDR.ventral_excursion_mean,...
        control(i).Rdev_param.ventral_excursion_mean];
    control_WPDL.ventral_excursion_mean = [control_WPDL.ventral_excursion_mean,...
        control(i).Ldev_param.ventral_excursion_mean];
    
    control_WPDR.dorsal_excursion_mean = [control_WPDR.dorsal_excursion_mean,...
        control(i).Rdev_param.dorsal_excursion_mean];
    control_WPDL.dorsal_excursion_mean = [control_WPDL.dorsal_excursion_mean,...
        control(i).Ldev_param.dorsal_excursion_mean];      
end


%% Stroke Angle

% upP2P
upP2P = [Right_WPSR.up_P2P_mean Right_WPSL.up_P2P_mean];
upP2P = [upP2P, Left_WPSR.up_P2P_mean Left_WPSL.up_P2P_mean];
upP2P = [upP2P, control_WPSR.up_P2P_mean control_WPSL.up_P2P_mean];
grp = [zeros(1, length(Right_WPSR.up_P2P_mean)), ones(1, length(Right_WPSL.up_P2P_mean))];
grp = [grp, ones(1, length(Left_WPSR.up_P2P_mean))*2, ones(1, length(Left_WPSL.up_P2P_mean))*3];
grp = [grp, ones(1, length(control_WPSR.up_P2P_mean))*4, ones(1, length(control_WPSL.up_P2P_mean))*5];
f = figure;
boxplot(upP2P, grp, 'Labels', {'RRight Wing', 'RLeft Wing', 'LRight Wing', 'LLeft Wing', 'CRight Wing', 'CLeft Wing'})
title('Comparing Upstroke Peak to Peak Amplitudes', 'fontsize', 18);
hold on;
ylabel('Peak to Peak Amplitude (rad)','fontsize', 14)
scatter(grp + 1, upP2P)
saveas(f, 'upstrokeP2P.png')

% dorsal_excursion
dorsal_excursion = [Right_WPSR.dorsal_excursion_mean Right_WPSL.dorsal_excursion_mean];
dorsal_excursion = [dorsal_excursion, Left_WPSR.dorsal_excursion_mean Left_WPSL.dorsal_excursion_mean];
dorsal_excursion = [dorsal_excursion, control_WPSR.dorsal_excursion_mean control_WPSL.dorsal_excursion_mean];
grp = [zeros(1, length(Right_WPSR.dorsal_excursion_mean)), ones(1, length(Right_WPSL.dorsal_excursion_mean))];
grp = [grp, ones(1, length(Left_WPSR.dorsal_excursion_mean))*2, ones(1, length(Left_WPSL.dorsal_excursion_mean))*3];
grp = [grp, ones(1, length(control_WPSR.dorsal_excursion_mean))*4, ones(1, length(control_WPSL.dorsal_excursion_mean))*5];
f = figure;
boxplot(dorsal_excursion, grp, 'Labels', {'RRight Wing', 'RLeft Wing', 'LRight Wing', 'LLeft Wing', 'CRight Wing', 'CLeft Wing'})
hold on;
scatter(grp + 1, dorsal_excursion)
ylabel('Dorsal Excursion Maxima (rad)', 'fontsize', 14)
title('Comparing Dorsal Excursion Maxima for Stroke Angle', 'fontsize', 18);
saveas(f, 'dorsalstrokeP2P.png')

% ventral_excursion
ventral_excursion = [Right_WPSR.ventral_excursion_mean Right_WPSL.ventral_excursion_mean];
ventral_excursion = [ventral_excursion, Left_WPSR.ventral_excursion_mean Left_WPSL.ventral_excursion_mean];
ventral_excursion = [ventral_excursion, control_WPSR.ventral_excursion_mean control_WPSL.ventral_excursion_mean];
grp = [zeros(1, length(Right_WPSR.ventral_excursion_mean)), ones(1, length(Right_WPSL.ventral_excursion_mean))];
grp = [grp, ones(1, length(Left_WPSR.ventral_excursion_mean))*2, ones(1, length(Left_WPSL.ventral_excursion_mean))*3];
grp = [grp, ones(1, length(control_WPSR.ventral_excursion_mean))*4, ones(1, length(control_WPSL.ventral_excursion_mean))*5];
f = figure;
boxplot(ventral_excursion, grp, 'Labels', {'RRight Wing', 'RLeft Wing', 'LRight Wing', 'LLeft Wing', 'CRight Wing', 'CLeft Wing'})
title('Comparing Ventral Excursion Maxima for Stroke Angle', 'fontsize', 18);
hold on;
ylabel('Ventral Excursion Maxima (rad)', 'fontsize', 14)
scatter(grp + 1, ventral_excursion)
saveas(f, 'ventralstrokeP2P.png')

%% Deviation Angle
% upP2P
upP2P = [Right_WPDR.up_P2P_mean Right_WPDL.up_P2P_mean];
upP2P = [upP2P, Left_WPDR.up_P2P_mean Left_WPDL.up_P2P_mean];
upP2P = [upP2P, control_WPDR.up_P2P_mean control_WPDL.up_P2P_mean];
grp = [zeros(1, length(Right_WPDR.up_P2P_mean)), ones(1, length(Right_WPDL.up_P2P_mean))];
grp = [grp, ones(1, length(Left_WPDR.up_P2P_mean))*2, ones(1, length(Left_WPDL.up_P2P_mean))*3];
grp = [grp, ones(1, length(control_WPDR.up_P2P_mean))*4, ones(1, length(control_WPDL.up_P2P_mean))*5];
f = figure;
boxplot(upP2P, grp, 'Labels', {'RRight Wing', 'RLeft Wing', 'LRight Wing', 'LLeft Wing', 'CRight Wing', 'CLeft Wing'})
title('Comparing Upstroke Deviation Peak to Peak amplitudes', 'fontsize', 18);
hold on;
scatter(grp + 1, upP2P)
ylabel('Peak to Peak Amplitude (rad)', 'fontsize', 14)
saveas(f, 'updevP2P.png')

% dorsal_excursion
dorsal_excursion = [Right_WPDR.dorsal_excursion_mean Right_WPDL.dorsal_excursion_mean];
dorsal_excursion = [dorsal_excursion, Left_WPDR.dorsal_excursion_mean Left_WPDL.dorsal_excursion_mean];
dorsal_excursion = [dorsal_excursion, control_WPDR.dorsal_excursion_mean control_WPDL.dorsal_excursion_mean];
grp = [zeros(1, length(Right_WPDR.dorsal_excursion_mean)), ones(1, length(Right_WPDL.dorsal_excursion_mean))];
grp = [grp, ones(1, length(Left_WPDR.dorsal_excursion_mean))*2, ones(1, length(Left_WPDL.dorsal_excursion_mean))*3];
grp = [grp, ones(1, length(control_WPDR.dorsal_excursion_mean))*4, ones(1, length(control_WPDL.dorsal_excursion_mean))*5];
f = figure;
boxplot(dorsal_excursion, grp, 'Labels', {'RRight Wing', 'RLeft Wing', 'LRight Wing', 'LLeft Wing', 'CRight Wing', 'CLeft Wing'})
hold on;
scatter(grp + 1, dorsal_excursion)
title('Comparing Dorsal Excursion Maxima for Deviation Angles', 'fontsize', 18);
ylabel('Dorsal Excursion Maxima (rad)', 'fontsize', 14)
saveas(f, 'dorsaldevP2P.png')

% ventral_excursion
ventral_excursion = [Right_WPDR.ventral_excursion_mean Right_WPDL.ventral_excursion_mean];
ventral_excursion = [ventral_excursion, Left_WPDR.ventral_excursion_mean Left_WPDL.ventral_excursion_mean];
ventral_excursion = [ventral_excursion, control_WPDR.ventral_excursion_mean control_WPDL.ventral_excursion_mean];
grp = [zeros(1, length(Right_WPDR.ventral_excursion_mean)), ones(1, length(Right_WPDL.ventral_excursion_mean))];
grp = [grp, ones(1, length(Left_WPDR.ventral_excursion_mean))*2, ones(1, length(Left_WPDL.ventral_excursion_mean))*3];
grp = [grp, ones(1, length(control_WPDR.ventral_excursion_mean))*4, ones(1, length(control_WPDL.ventral_excursion_mean))*5];
f = figure;
boxplot(ventral_excursion, grp, 'Labels', {'RRight Wing', 'RLeft Wing', 'LRight Wing', 'LLeft Wing', 'CRight Wing', 'CLeft Wing'})
title('Comparing Ventral Excursion Maxima for Deviation Angles', 'fontsize', 18);
hold on;
scatter(grp + 1, ventral_excursion)
ylabel('Ventral Excursion Maxima (rad)','fontsize', 14)
saveas(f, 'ventraldevP2P.png')

%%



