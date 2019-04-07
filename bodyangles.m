Fly05_Right_F03 = csvread('After/Set10_Fly05_Right_F03/Fly05_Right_F03_Remasteredxyzpts.csv', 1, 0);
[er1, er2] = Quality_Check(Fly05_Right_F03);
[wingAngles_Fly05_Right_F03, ypr_Fly05_Right_F03] = calculatestrokeangle(Fly05_Right_F03);


Fly06_Left_F01 = csvread('After/Set10_Fly06_Left_F01/Fly06_Left_F01_finalxyzpts.csv', 1, 0);
[er1, er2] = Quality_Check(Fly06_Left_F01);
[wingAngles_Fly06_Left_F01, ypr_Fly06_Left_F01] = calculatestrokeangle(Fly06_Left_F01);

Fly10_Left_F01 = csvread('After/Set10_Fly10_Left_F01/Fly10_Left_F01_Remasteredxyzpts.csv' , 1, 0);
[er1, er2] = Quality_Check(Fly10_Left_F01);
[wingAngles_Fly10_Left_F01, ypr_Fly10_Left_F01] = calculatestrokeangle(Fly10_Left_F01);
% This dataset needs revisiting

Fly02_Control_F02 = csvread('After/Set01_Fly02_Control_F02/Dataxyzpts.csv', 1, 0);
[er1, er2] = Quality_Check(Fly02_Control_F02);
[wingAngles_Fly02_Control_F02, ypr_Fly02_Control_F02] = calculatestrokeangle(Fly02_Control_F02);

Fly01_NoHaltere_F02 = csvread('After/Set01_Fly01_NoHaltere_F02/Fly0x_NoHaltere_F02_analysed123xyzpts.csv', 1, 0);
Fly01_NoHaltere_F02 = Fly01_NoHaltere_F02(80:600, :);
[er1, er2] = Quality_Check(Fly01_NoHaltere_F02);
[wingAngles_Fly01_NoHaltere_F02, ypr_Fly01_NoHaltere_F02] = calculatestrokeangle(Fly01_NoHaltere_F02);


plot(ypr_Fly01_NoHaltere_F02(:,3), 'color', [0.8, 0.2, 0.4]);  %Red
hold on;
plot(ypr_Fly02_Control_F02(:,3), 'color', [0.2, 0.8, 0.4]); % Green
plot(ypr_Fly05_Right_F03(:,3), 'color', [1.0, 0.2, 0.8]);   % Pink
ypr_Fly06_Left_F01(110,3) = NaN;
plot(ypr_Fly06_Left_F01(:,3), 'color', [0.2, 0.6, 1.0]);    % Blue
hold off;
title('Roll Angles')
xlabel('Frame Number')
ylabel('Roll Angle (rad)')
blegend('NoHaltere', 'Control', 'Left Haltere Ablated', 'Right Haltere Ablated')



figure
plot(ypr_Fly01_NoHaltere_F02(1:521,2), 'color', [0.8, 0.2, 0.4]);  %Red
hold on;
plot(ypr_Fly02_Control_F02(:,2), 'color', [0.2, 0.8, 0.4]); % Green
plot(ypr_Fly05_Right_F03(:,2), 'color', [1.0, 0.2, 0.8]);   % Pink
ypr_Fly06_Left_F01(110,2) = NaN;
plot(ypr_Fly06_Left_F01(:,2), 'color', [0.2, 0.6, 1.0]);    % Blue
hold off;
title('Pitch Angles')
xlabel('Frame Number')
ylabel('Pitch Angle (rad)')
legend('NoHaltere', 'Control', 'Left Haltere Ablated', 'Right Haltere Ablated')

figure
plot(ypr_Fly01_NoHaltere_F02(1:521,1), 'color', [0.8, 0.2, 0.4]);  %Red
hold on;
plot(ypr_Fly02_Control_F02(:,1), 'color', [0.2, 0.8, 0.4]); % Green
plot(ypr_Fly05_Right_F03(:,1), 'color', [1.0, 0.2, 0.8]);   % Pink
ypr_Fly06_Left_F01(110,1) = NaN;
plot(ypr_Fly06_Left_F01(:,1), 'color', [0.2, 0.6, 1.0]);    % Blue
hold off;
title('Yaw Angles')
xlabel('Frame Number')
ylabel('Yaw Angle (rad)')
legend('NoHaltere', 'Control', 'Left Haltere Ablated', 'Right Haltere Ablated')
