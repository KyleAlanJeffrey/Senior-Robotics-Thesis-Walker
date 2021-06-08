function [R_ba,R_ba_hat] = cam_velocity_func(cam, theta_series,cam_diff)
%CAM_VELOCITY_FUNC Summary of this function goes here
%   Detailed explanation goes here
R_ba = [cam.*cos(theta_series);cam.*sin(theta_series)];
R_ba_hat = [cam.*cos(theta_series);cam.*sin(theta_series)]/norm(R_ba(:,1));

V_a = cam_diff.*R_ba_hat;

end

