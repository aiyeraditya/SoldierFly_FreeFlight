pitR = [];
for i = 1:length(Right)
    p = Right(i).pitch;
    pitR = [pitR, mean(p)];
end

pitL = [];
for i = 1:length(Left)
    p = Left(i).pitch;
    pitL = [pitL, mean(p)];
end

pitC = [];
for i = 1:length(control)
    p = control(i).pitch;
    pitC = [pitC, mean(p)];
end



pit = [pitR, pitL, pitC];
grp = [zeros(1, length(pitR)), ones(1, length(pitL)), ones(1, length(pitC))*2];
figure;
boxplot(pit, grp, 'Labels', {'Right Ablated', 'Left Ablated', 'Control'})
hold on;
scatter(grp + 1, pit)
xlabel('Treatment', 'fontsize', 14)
ylabel('Mean Pitch (radians)', 'fontsize', 14);
title('Comparing Mean Pitch', 'fontsize', 18);


p_LC = ranksum(pitL, pitC);
p_RC = ranksum(pitR, pitC);
p_LR = ranksum(pitR, pitL);




rollR = [];
for i = 1:length(Right)
    p = Right(i).roll;
    rollR = [rollR, mean(p)];
end

rollL = [];
for i = 1:length(Left)
    p = Left(i).roll;
    rollL = [rollL, mean(p)];
end

rollC = [];
for i = 1:length(control)
    p = control(i).roll;
    rollC = [rollC, mean(p)];
end

roll = [rollR, rollL, rollC];
grp = [zeros(1, length(rollR)), ones(1, length(rollL)), ones(1, length(rollC))*2];
figure;
boxplot(roll, grp, 'Labels', {'Right Ablated', 'Left Ablated', 'Control'})
hold on;
scatter(grp + 1, roll)
xlabel('Treatment', 'fontsize', 14)
ylabel('Mean roll (radians)', 'fontsize', 14);
title('Comparing Mean Roll', 'fontsize', 18);

r_LC = ranksum(rollL, rollC);
r_RC = ranksum(rollR, rollC);
r_LR = ranksum(rollR, rollL);


yawR = [];
for i = 1:length(Right)
    p = Right(i).yaw;
    yawR = [yawR, mean(p)];
end

yawL = [];
for i = 1:length(Left)
    p = Left(i).yaw;
    yawL = [yawL, mean(p)];
end

yawC = [];
for i = 1:length(control)
    p = control(i).yaw;
    yawC = [yawC, mean(p)];
end



yaw = [yawR, yawL, yawC];
grp = [zeros(1, length(yawR)), ones(1, length(yawL)), ones(1, length(yawC))*2];
figure;
boxplot(yaw, grp, 'Labels', {'Right Ablated', 'Left Ablated', 'Control'})
hold on;
scatter(grp + 1, yaw)
xlabel('Treatment', 'fontsize', 14)
ylabel('Mean yaw (radians)', 'fontsize', 14);
title('Comparing Mean Yaw', 'fontsize', 18);


p_LC = ranksum(yawL, yawC);
p_RC = ranksum(yawR, yawC);
p_LR = ranksum(yawR, yawL);




