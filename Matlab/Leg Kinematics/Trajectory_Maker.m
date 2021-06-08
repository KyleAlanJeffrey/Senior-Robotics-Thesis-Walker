clc
clear all
close all
%% Cam Leg Design: half circle trajectory
dt = .01;
t_series = [0:dt:10];
L = 3; % Length of leg plate 
r = 8.5; % Radius of rotation joint
h = 1; % distance to pivot point from radius tip
w = -180; % angular velocity deg/s


fh=@(theta) (heaviside((mod(theta,360)) - 190) - ...
    heaviside((mod(theta,360)) - 350)).*(r*sind(theta) - r*sind(350));

rotation_arm_tip_x =@(theta) r*cosd(theta);
rotation_arm_tip_y =@(theta) r*sind(theta) - fh(theta);

c = [rotation_arm_tip_x(t_series*w); rotation_arm_tip_y(t_series*w)];

b = @(cx,cy) norm([cx cy]); % the rotating arms length

figure();
plot(c(1,:),c(2,:), '-.r');
for i = 1: length(t_series)
    t = i*dt;
    theta = w*t;
    cx = rotation_arm_tip_x(theta);
    cy = rotation_arm_tip_y(theta);
    r(i) = sqrt(cx^2 + cy^2);
    % Plot rotation tip and leg tip
    hold on
    g(1) = plot([0 cx], [0 cy], '-r'); %rotating arm
    axis equal
    pause(dt);
    delete(g);
end