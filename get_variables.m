function [fly_d] = get_variables(data, name)
    fly_d = fly_data;
    fly_d.points = data;
    [fly_d.error_right, fly_d.error_left] = Quality_Check(data, name);
    [wing, ypr] = calculatestrokeangle(data);
    fly_d.Rstroke = wing(:,2,2);
    fly_d.Lstroke = wing(:,2,1);
    fly_d.Rdev = wing(:,1,1);
    fly_d.Ldev = wing(:,1,2);
    fly_d.yaw = ypr(:,1);
    fly_d.pitch = ypr(:,2);
    fly_d.roll = ypr(:,3);
    fly_d.name = name;
    fly_d.Rst_param = get_peak_values(fly_d.Rstroke, name + "RightStroke");
    fly_d.Lst_param = get_peak_values(fly_d.Lstroke, name + "LeftStroke");
    
    
    fs = 2800;
    fc = 400;
    [b,a] = butter(3,fc/(fs/2));
    fly_d.Rdevfiltered = filtfilt(b,a,fly_d.Rdev);
    fly_d.Rdev_param = get_peak_values(fly_d.Rdevfiltered, name + "RightDeviation");
    fly_d.Ldevfiltered = filtfilt(b,a,fly_d.Ldev);
    fly_d.Ldev_param = get_peak_values(fly_d.Ldevfiltered, name + "LeftDeviation");    
end
