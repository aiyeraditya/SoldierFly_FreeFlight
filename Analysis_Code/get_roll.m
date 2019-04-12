function [roll, pitch] = get_bodyangle(data)
roll = [];
pitch = [];
p1 = data(:,4:6);
p2 = data(:,7:9);
p3 = data(:, 1:3);
for i = 1:length(p1(:,1))
    vector = p2(i, 1:3) - p1(i, 1:3);
    [az,el,r] = cart2sph(vector(1), vector(2), vector(3));
    roll = [roll, el];
    vec1 = (p2(i, 1:3) + p1(i, 1:3))/2;
    vec1 = p3 - vec1;
    [az,el,r] = cart2sph(vec1(1), vec1(2), vec1(3));
    pitch = [pitch, el];
end