function check_smooth(data)
    [wing, ypr] = calculatestrokeangle(data);
    f = figure('visible','on');
    plot(wing(:,1,1))
    title('Raw plot of Right Stroke Angle')
    f = figure('visible','on');
    plot(wing(:,1,2))
    title('Raw plot of Left Stroke Angle')
end