data = csvread('After/Set11Fly04_Right_F02/Fly04_Right_F02_Remasteredxyzpts.csv', 31, 0);
data = data(1:640, :);


[wing, ypr] = calculatestrokeangle(data);
Rst = wing(:,1,1);
Lst = wing(:,1,2);

fs = 2800;
fc = 400;
[b,a] = butter(3,fc/(fs/2));
RstFilter = filtfilt(b,a, Rst);
figure
plot(RstFilter*180/pi)
title('Right Stroke')


LstFilter = filtfilt(b,a, Lst);
figure
title('Left Stroke')
plot(LstFilter);



figure
plot(Rde)




Rde = wing(:,2,1);
Lde = wing(:,2,2);
title('Right Dev')
figure
plot(Lde)
title('Left Dev')