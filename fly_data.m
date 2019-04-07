classdef fly_data
    properties
        points
        name
        error_left
        error_right
        Rstroke
        Lstroke
        Rst_param = wing_data()
        Lst_param = wing_data()
        Rdev
        Rdevfiltered
        Rdev_param = wing_data()
        Ldev
        Ldevfiltered
        Ldev_param = wing_data()
        pitch
        yaw
        roll
    end
end

% For each fly, I need to make a class fly_data and pass it to its name.
% This set of classes can then be used for ease in making plots.
