function [cx, cy,t_series] = Trajectory_Func(Graph,dt,w)
%Trajectory_Func() Gives the Trajectory information for the Slide Joint
% Leg Design. 
% dt = time-step; 
% Graph = Specify whether to graph; 
% w = Angular Velocity


t_series = [0:dt:10];
r = 6.5; % Radius of rotation joint


fh=@(theta) (heaviside((mod(theta,360)) - 10) - ...
    heaviside((mod(theta,360)) - 170)).*(r*sind(theta) - r*sind(10));

rotation_arm_tip_x =@(theta) r*cosd(theta);
rotation_arm_tip_y =@(theta) -r*sind(theta) + fh(theta);

c = [rotation_arm_tip_x(t_series*w); rotation_arm_tip_y(t_series*w)];
b = @(cx,cy) norm([cx cy]); % the rotating arms length

for i = 1: length(t_series)
    t = i*dt;
    theta(i) = w*t;
    cx(i) = rotation_arm_tip_x(theta(i));
    cy(i) = rotation_arm_tip_y(theta(i));
%     r(i) = b(cx,cy); % Radius across time series
    if strcmp(Graph,'y')
        % Plot rotation tip
        hold on
        g(1) = plot([0 cx(i)], [0 cy(i)], '-r'); %rotating arm
        axis equal
        pause(dt);
        delete(g);
    end
end
if strcmp(Graph,'y')
    figure();
    plot(c(1,:),c(2,:), '-.r');
    axis equal
end
end

