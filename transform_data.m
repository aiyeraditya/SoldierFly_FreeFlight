%% Aditya Iyer 05 April 2019
%%%%%

% This function transforms the array of points (data) to an
% appropriate axis system and shifts the origin.
% Each day of filming has its own axes and origin defined by EasyWand5.
% Transformation allows for standardization of axes

%%%%%%%%%%%%%%%%%%%%

function dat = transform_data(data, matrix, origin)
for i = 1:length(data)
    for j = 0:5
        d = data(i, (j*3+1):(j*3+3));
        d = d - origin;
        d = matrix*transpose(d);
        data(i, (j*3+1):(j*3+3)) = d;
    end
    dat = data;
end