clear all;
close all;
clc;
%% Defined Constants Time Model ISP Model
V_m = 1; % Velocity of millipede
V_wave = 1; % Velocity of metachronal wave
T_t = 1; % Transfer stage period
T_p = 1; % Propulsive stage period
w = 60*(pi/180); % angular velocity of legs in rads
H = 1; % height of leg lift
R = 1; % Reference circle radius
dt = .1; % Time step

%% Initialize video
myVideo = VideoWriter('3Leg_Traj'); %open video file
myVideo.FrameRate = 24;  %can adjust this, 5 - 10 works well for me
open(myVideo)
%% Garcia 2015 Geometric Model
R = 1; % eliptical width radius
H = R+.866; % height of wave from floor. This gives 60 deg span
w = 1; %angular velocity rad/s
V_w = 1; % Millipede velocity mm/s
num_leg_pairs = 4;
leg_pair_space = 2*R;
leg_rot_offset = pi/3;

x=@(tau) -R*cos(tau);
y=@(tau) H-R*(1-sin(tau));

figure('Position', [0 0 1200 800]);
no_contact_points = 0; % amount of delta t times no leg is touching ground
for i = 1:200
    t = i*dt;   % time
    tau = w*t;  % angle of rotation
    cy = H-R;     % height of circle of rotation
    
    %Check ground contact
    % If no legs are touching ground, add to no_contact_points
    contact = 0;
    for k=1: num_leg_pairs
        if y(tau + leg_rot_offset*(k-1)) <= 0 || y(tau + leg_rot_offset*(k-1) + pi) <= 0 ...
        || y(tau + leg_rot_offset*(k-1) + pi/2) <= 0 || y(tau + leg_rot_offset*(k-1) + 3*pi/2) <= 0
            contact = 1;
        end
    end
    if(~contact)
        no_contact_points=no_contact_points+1;    
    end
    dx = V_w*(t-dt*no_contact_points); % distance travelled based on velocity
    cx = dx;    % center of circle of rotation
    pos(i)=dx;
    
    %Plot leg from worldframe
    subplot(2,4,[1,4])
    l(1)  = Leg_Worldfram_func(x,y,tau, dx, cx, cy);
    l(2)  = Leg_Worldfram_func(x,y,tau+pi, dx, cx, cy);
    l(3)  = Leg_Worldfram_func(x,y,tau+3*pi/2, dx, cx, cy);
    l(4)  = Leg_Worldfram_func(x,y,tau+pi/2, dx, cx, cy);
    
    l(5)  = Leg_Worldfram_func(x,y,tau+leg_rot_offset, dx, cx+leg_pair_space, cy);
    l(6)  = Leg_Worldfram_func(x,y,tau+leg_rot_offset+pi, dx, cx+leg_pair_space, cy);
    l(7)  = Leg_Worldfram_func(x,y,tau+leg_rot_offset+pi/2, dx, cx+leg_pair_space, cy);
    l(8)  = Leg_Worldfram_func(x,y,tau+leg_rot_offset+3*pi/2, dx, cx+leg_pair_space, cy);
    
    l(9) = Leg_Worldfram_func(x,y,tau+2*leg_rot_offset, dx, cx+2*leg_pair_space, cy);
    l(10) = Leg_Worldfram_func(x,y,tau+2*leg_rot_offset+pi, dx, cx+2*leg_pair_space, cy);
    l(11) = Leg_Worldfram_func(x,y,tau+2*leg_rot_offset+pi/2, dx, cx+2*leg_pair_space, cy);
    l(12) = Leg_Worldfram_func(x,y,tau+2*leg_rot_offset+3*pi/2, dx, cx+2*leg_pair_space, cy);
    
    subplot(2,4,5);
    l(13) = Leg_LocalFrame_func(x,y,tau, dx, cx, cy);
    subplot(2,4,6);
    l(14) = Leg_LocalFrame_func(x,y,tau+leg_rot_offset, dx, cx+leg_pair_space, cy);
    subplot(2,4,7);
    l(15) = Leg_LocalFrame_func(x,y,tau+2*leg_rot_offset, dx, cx+2*leg_pair_space, cy);
    
    
    frame = getframe(gcf); %get frame
    writeVideo(myVideo, frame);
    pause(1/60);
    delete(l);
end
close(myVideo);
figure()
% plot([1:1:200]*dt,pos);
% title(['Robot Position, ', num2str(num_leg_pairs*2), ' Legs, ', num2str(rad2deg(leg_rot_offset)), ' deg Offset']);
% xlabel('Time(s)');
% ylabel('Distance(mm)');
