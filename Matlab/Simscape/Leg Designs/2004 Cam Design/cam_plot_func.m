function [shape] = cam_plot_func(s,s_ret, color, ret_angle, D,theta_series)
%CAM_PLOT_FUNC Summary of this function goes here
%   Detailed explanation goes here
radius = 1;
for i=1: length(theta_series)
    theta=theta_series(i);
    shape(i)=radius;
    if(theta<=ret_angle) % return phase
        shape(i)=s_ret(theta);
    elseif(theta>ret_angle && theta <= pi/2) % 1st quadrant, propulsive state
        shape(i)=s(theta);
    elseif(theta > pi/2 && theta <= pi-ret_angle) % 2nd quadrant, propulsive state
        shape(i)=s(pi-theta);
    elseif(theta > pi-ret_angle && theta <= pi) % return phase
        shape(i) = s_ret(pi-theta);
    elseif(theta > pi && theta <= pi + ret_angle)%3rd quadrant
        shape(i) = D - s_ret(theta-pi);
    elseif(theta > pi+ret_angle && theta <= 3/2*pi)
        shape(i)= D - s(theta-pi);
    elseif(theta > 3/2*pi && theta <= 2*pi-ret_angle)%4th quadrant
        shape(i)=D-s(2*pi - theta);
    elseif(theta > 3/2*pi-ret_angle && theta <= 2*pi)%4th quadrant
        shape(i)=D-s_ret(2*pi - theta);
    end
end
    polarplot(theta_series, shape, color);
    hold on
    grid on

end

