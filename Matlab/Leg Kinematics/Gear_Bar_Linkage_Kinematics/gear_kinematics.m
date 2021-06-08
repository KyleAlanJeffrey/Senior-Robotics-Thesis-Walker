clear all
close all
%%
t=[0:0.01:5]; %2seconds
GR = 1; %Gear Ratio
R1 = 1;
R2 = 1/GR;
d=.2;
L = 7; %bar length

% With constant angular velocity
w=pi;
theta_0 = pi/2; % inital angle
theta_f=@(t) w*t + theta_0; %input is time
theta_follower_f=@(t) GR*w*t + theta_0;

% Driver Gear
C1_f=@(theta) [R1*cos(theta); R1*sin(theta)];%input is angle
% Drivee Gear
C2_f=@(theta) [-R2*cos(theta); R2*sin(theta)-(R1+R2+2*d)];%input is angle


C1_o=C1_f(theta_f(t));
C2_o=C2_f(theta_follower_f(t));

%% Trajectory Caluclator
L_list = [2:.5:6]
l_i = (C2_o-C1_o);
l_ihat = l_i./vecnorm(l_i);
for i=1: length(L_list)
    l_o = (L_list(i) - vecnorm(l_i)).*l_ihat + C2_o;
    hold on
    plot(l_o(1,:), l_o(2,:));
    axis equal
    pause(1)
end
legend('2','2.5','3','3.5','4','4.5','5','5.5','6');
xlabel('Distance')
ylabel('Distance')
title('Leg Trajectories for Different Leg Length(2-6)')

 %% Visualizer
% hold on
% plot(C1_o(1,:),C1_o(2,:));
% plot(C2_o(1,:),C2_o(2,:));
% axis equal
% for i=1: length(t)
%     theta = theta_f(t(i));
%     theta_follower = theta_follower_f(t(i))
%     C1 = C1_f(theta);
%     C2 = C2_f(theta_follower);
%     l_i = (C2-C1);
%     l_ihat = l_i/norm(l_i);
%     l_o = (L - norm(l_i))*l_ihat + C2;
%     g(1) = plot([0 C1(1)],[0 C1(2)]);
%     g(2) = plot([0 C2(1)],[-(R1+R2) C2(2)]);
%     g(3) = plot([C1(1) l_i(1)+C1(1)],[C1(2) l_i(2)+C1(2)], '-g');
%     g(4) = plot([C2(1) l_o(1)],[C2(2) l_o(2)], '-g');
%     
%     plot(l_o(1), l_o(2), '.b');
%     plot(-l_o(1), -l_o(2), '.r');
%     
% %     xlim([-4 4])
% %     ylim([-7 2])
%     xlabel('Distance')
%     ylabel('Distance')
%     title('Leg Trajectories for Leg Length 5')
%     pause(1/60);
%     delete(g);
% end
