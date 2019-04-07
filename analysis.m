%data = csvread('After/Set10_Fly05_Right_F03/Fly05_Right_F03_Remasteredxyzpts.csv', 1, 0);
%data =  csvread('After/Set10_Fly06_Left_F01/Fly06_Left_F01_finalxyzpts.csv', 1, 0);
%data =  csvread('After/Set01_Fly0x_NoHaltere_F02/Fly0x_NoHaltere_F02_analysed123xyzpts.csv', 1, 0);
data =  csvread('After/Set01_Fly0y_Control_F02/Dataxyzpts.csv', 1, 0);
%data = data(1:600, 1:18);
[wingAngles, ypr] = calculatestrokeangle(data);

stroke_right = wingAngles(:,2,2);
[p_R, PI_R] = findpeaks(stroke_right, 'Minpeakheight', 0.01, 'Minpeakdistance', 10);
[np_R, nPI_R] = findpeaks(-stroke_right, 'Minpeakheight', 0.01, 'Minpeakdistance', 10);
% np_R1 = [-1.806, -1.827]
% for i = 5:24
% np_R1 = [np_R1, np_R(i, 1)];
% end
% p_R1 = [transpose(p_R(1:14,1)), 0.7749, transpose(p_R(15:21))]
% p_R = transpose(p_R1)
%np_R1 = [transpose(np_R(12:34, :), transpose(np_R(36:42))]
np_R(35) = NaN;
np_R = rmmissing(np_R);
np_R = np_R(12:length(np_R))
WBAR = np_R(1:length(np_R)) + p_R;
WBARI = nPI_R(1:length(nPI_R)) - PI_R;
% figure
% plot(WBAR)
% xlabel('Stroke Angle Peak')
% ylabel('Peak to Peak Amplitude')
% title('Right Wing Stroke Peak to Peak Amplitude')

figure
plot(stroke_right)
hold on;
plot(PI_R, p_R, 'r*')
plot(nPI_R, -np_R, 'k*')
hold off;
xlabel('Frame Number')
ylabel('Stroke Amplitude')
title('Right Wing Stroke Angle with Peaks Labeled');

stroke_left = wingAngles(:,2,1);
[p_L, PI_L] = findpeaks(stroke_left, 'Minpeakheight', 0.01, 'Minpeakdistance', 10);
[np_L, nPI_L] = findpeaks(-stroke_left, 'Minpeakheight', 0.01, 'Minpeakdistance', 10);
% p_L1 = [transpose(p_L(1:14,1)), 0.6791, transpose(p_L(15:21))]
% p_L = transpose(p_L1)

WBAL = np_L(12:length(np_L)) + p_L;
WBALI = nPI_L(3:length(nPI_L)) - PI_L;
% figure
% plot(WBAL)
% xlabel('Stroke Angle Peak')
% ylabel('Peak to Peak Amplitude')
% title('Left Wing Stroke Peak to Peak Amplitude')
% 
figure
plot(stroke_left)
hold on;
plot(PI_L, p_L, 'r*')
plot(nPI_L, -np_L, 'k*')
hold off;
xlabel('Frame Number')
ylabel('Stroke Amplitude')
title('Left Wing Stroke Angle with Peaks Labeled');

returning = WBAL - WBAR;

% 
% figure
% plot(stroke_right, 'red')
% hold on;
% plot(stroke_left, 'blue')
% hold off;
% xlabel('Frame Number')
% ylabel('Stroke Amplitude')
% title('Stroke Angles');
% legend('Right Wing Stroke', 'Left wing Stroke')

% figure
% plot(WBAR - WBAL);
% xlabel('Stroke Angle Peak')
% ylabel('Stroke Angle ')
% title('Difference in Stroke Angle')


% Find Peaks and Peak Indices Here
% 
% deviation_right = wingAngles(:,1,2);
% [p_R, PI_R] = findpeaks(deviation_right, 'Minpeakheight', 0.01, 'Minpeakdistance', 10);
% [np_R, nPI_R] = findpeaks(-deviation_right, 'Minpeakheight', 0.01, 'Minpeakdistance', 10);
% DBAR = np_R(1:length(np_R)) + p_R(3:length(p_R));
% DBARI = nPI_R(1:length(nPI_R)) - PI_R(3:length(p_R));
% plot(DBAR)
% 
% plot(deviation_right)
% hold on;
% plot(PI_R, p_R, 'r*')
% plot(nPI_R, -np_R, 'b*')
% hold off;
% 
% 
% % Find Peaks and Peak Indices Here
% deviation_left = wingAngles(:,1,1);
% [p_L, PI_L] = findpeaks(deviation_left, 'Minpeakheight', 0.01, 'Minpeakdistance', 10);
% [np_L, nPI_L] = findpeaks(-deviation_left, 'Minpeakheight', 0.01, 'Minpeakdistance', 10);
% DBAL = np_L(1:length(np_R)) + p_L(3:length(p_R));
% DBALI = nPI_L(1:length(nPI_R)) - PI_L(3:length(p_R));
% plot(DBAL)
% 
% plot(deviation_left)
% hold on;
% plot(PI_L, p_L, 'r*')
% plot(nPI_L, -np_L, 'b*')
% hold off;
% 
% % Find Peaks and Peak Indices Here
% 
% del_deviation = deviaton_right - deviation_left;
% plot(del_deviation)



