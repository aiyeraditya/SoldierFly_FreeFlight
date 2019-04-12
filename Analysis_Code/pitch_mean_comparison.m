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

pit = [-pitR, -pitL, -pitC];
grp = [zeros(1, length(pitR)), ones(1, length(pitL)), ones(1, length(pitC))*2];
figure;
boxplot(pit, grp, 'Notch', 'on', 'Labels', {'Right Ablated', 'Left Ablated', 'Control'})
xlabel('Treatment')
ylabel('Mean Pitch (radians)');
title('Comparing Mean Pitch');


p_LC = ranksum(pitL, pitC);
p_RC = ranksum(pitR, pitC);
p_LR = ranksum(pitR, pitL);


