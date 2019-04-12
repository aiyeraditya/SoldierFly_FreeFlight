for i = 1:length(Right)
    Right(i).name
    Right(i).roll(1)*180/pi
end
    
Set11_Fly06_Right_F06.pitch(1)*180/pi

roll = [];
p1 = Right(1).points(:,4:6);
p2 = Right(1).points(:,7:9);
for i = 1:length(p1(:,1))
    vector = p2(i, 1:3) - p1(i, 1:3);
    [az,el,r] = cart2sph(vector(1), vector(2), vector(3));
    if(az < -pi/2)
        az = az + 2*pi;
    end
    roll = [roll, az];
end
figure
plot(roll)

figure
plot(Right(1).roll)