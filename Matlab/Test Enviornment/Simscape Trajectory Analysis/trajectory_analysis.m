clear all
close all
clc
%% Import pot data
t = readtable('Angular Position LPF 15Hz.txt', 'ReadVariableNames', false);
time = seconds(t.Var1(:));
time = time - time(1) - 8.3;
angle = t.Var3(:)/103*360;

 %% import data from 3d after effects
aeData = readmatrix('afterEffectsMotionData');


% Normalize size of after effects data
% max to min of x values = 12 cm 
cmax = max(aeData(:,2));
cmin = min(aeData(:,2));
cScale = cmax-cmin;

vmax = max(aeData(:,3));
vmin = min(aeData(:,3));
vScale = vmax-vmin;

scale = -12/cScale;

% center x
aeData(:,2) = (aeData(:,2)-cmax+(cScale/2));
% center y
aeData(:,3) = (aeData(:,3)-vmax+1+(vScale/2));

aeData(:,2:3) = aeData(:,2:3)*scale;  

aeData(:,3) = (aeData(:,3)+1);

%% Grab Cam trajectory data from simulation
data1 = load('cam_traj.mat');
px = data1.data{4}.Values;
py = data1.data{1}.Values;
rot = data1.data{5}.Values;


figure()
subplot(211)
rot_mat = [0 -1;...
           1 0];
sim_traj = [px.Data, py.Data] * rot_mat;
plot(sim_traj(:,1),sim_traj(:,2))
grid on
axis equal

subplot(212)
plot(rot.Time, rad2deg(rot.Data)*-1)
grid on
%% Reallign aerot data so that it begins at 350 deg
aeTheta = rad2deg(atan2(aeData(:,3),aeData(:,2))) + 180;
aeTime = [0:1/240:289/240];
aeTheta = [aeTheta' aeTheta'];

new_ae_time = aeTime(1, 110:252);
new_ae_theta = aeTheta(1, 110:252);


%% Plot sim data against real after effects rotation data
figure()

% plot(aeTime,aeTheta)
plot(new_ae_time  - new_ae_time(1) , new_ae_theta)
hold on
plot(rot.Time(1:70), rot.Data(1:70)+205)
plot(time, angle) % raw angular data
legend('Experimental', 'Simulation')
grid on
title('Simulation Angular Position vs. Experimental Angular Position')
ylabel('Angular Position(Degrees)')
xlabel('Time(s)')

