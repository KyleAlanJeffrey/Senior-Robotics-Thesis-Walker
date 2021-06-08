%% Cam Leg Design: half circle trajectory
clc
clear all
close all

dt = .01;
t_series = [0:dt:4];
w = pi/2; %angular velocity
theta_series = w*t_series;

L = 12;
D = .195*L;
H = .43*L;
radius = D/2;
D=.6*L;
% H=.35*L;

lambda = asin(2*H/(L+D));
alpha = deg2rad(60);
intrp_angle = alpha - deg2rad(2);



disp(['Lambda: ', num2str(  rad2deg(lambda))])
disp(['Chosen propulsive to transfer angle: ', num2str(  rad2deg(alpha))])
s =@(theta) ((L+D)/2) - (H/sin(theta)) ; %% alpha to 90deg
sx =@(theta) s(theta)*cos(theta);
sy =@(theta) s(theta)*sin(theta);

follower =@(R) R+(L-(L+D)/2);
foot     =@(R) R-((L+D)/2);

% s1=  s(s1_range);
% s2 = s(pi-s1_range);
% s3 = D - s(theta_quad-pi);
% s4 = D - s(2*pi-theta_quad);

theta_spline_angles = [0 intrp_angle alpha alpha+deg2rad(5)];
shape_spline_points = [D/2 s(intrp_angle) s(alpha) s(alpha+deg2rad(5))]

pspline = spline(theta_spline_angles,shape_spline_points);
makimaspline = makima(theta_spline_angles,shape_spline_points);
poly = polyfit(theta_spline_angles,shape_spline_points, 7);


s_ret=@(theta) ppval(makimaspline,theta);
s_ret1=@(theta) ppval(pspline,theta);
s_ret2=@(theta) polyval(poly,theta);

%% Plot Shapes
ret_angle = alpha;
figure();
[shapem] = cam_plot_func(s,s_ret, 'b', ret_angle, D, theta_series);
[shapep] = cam_plot_func(s,s_ret1, 'r', ret_angle, D, theta_series);
[shapepolyfit] = cam_plot_func(s,s_ret2, 'k', ret_angle, D, theta_series);
title(['Fitting Cam Curve from 0 to \alpha', '(D: ', num2str(D),'L, H: ', num2str(H),'L)']);

% Plot trajectoires
polarplot(theta_series, foot(shapem),'--b');
polarplot(theta_series, foot(shapep), '--r');
polarplot(theta_series, foot(shapepolyfit), '--k');
legend({'Makima Polynomial Spline','Polynomial Spline','Polynomial Fit'},'Location','southwest')
%% Analyze Curve
% 
% figure()
% dx = dt;
% shapem_derivative = diff(shapem)/dx;
% shapep_derivative = diff(shapep)/dx;
% shapepoly_derivative = diff(shapepolyfit)/dx;
% % plot(rad2deg(theta_series(1:end-1)), shapem_derivative(1:end),'--b')
% hold on
% % plot(rad2deg(theta_series(1:end-1)), shapep_derivative(1:end),'-r')
% % plot(rad2deg(theta_series(1:end-1)), shapepoly_derivative(1:end),'.k')
% % plot(rad2deg(theta_series(60:120)), (-w./H).*((-H./sin(theta_series(60:120)).^2)))
% % plot(rad2deg(theta_series(60:120)), w*H + (w*H.*tan(theta_series(60:120))));
% 
% grid on
% % ylim([-50 50]);
% legend();

%% X Y Graph shape
% 
cam = foot(shapem);

x = cam.*cos(theta_series);
y = cam.*sin(theta_series);
figure()
plot(x,y);
hold on
plot(foot(cam).*cos(theta_series),foot(cam).*sin(theta_series) )
exportshape = [x' y' zeros(1,length(y))'];
axis equal

writematrix([theta_series' cam'], 'trajPolar.csv');
%% animate leg

% figure();
% polarplot(theta_series, cam, 'b');
% hold on;
% for i=1: length(theta_series)-1
%     theta = theta_series(i);
%     j = mod(i+200,400);
%     if(j==0)
%        j=1; 
%     end
%     
%     % Get foot and follower values
%     foot_follower_r = follower(cam(i));
%     foot_r = foot(cam(i)); 
%     
%     %plot bearings on cam path
%     l(1)=polarplot(theta, cam(i), 'or');
%     l(2)=polarplot(theta, -cam(j), 'or');
% 
%     % Plot leg lengths 
%     l(3)=polarplot([theta; theta], [0; foot_follower_r], 'r');
%     l(4)=polarplot([theta; theta], [0; foot_r], 'r');
%     
%     % Plot foot trajectory
%     polarplot(theta, foot_r, '.r');
% 
%     grid on
%     pause(1/60)
%     delete(l);
% end
