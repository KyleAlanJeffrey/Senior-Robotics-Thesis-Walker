clear all
close all
clc

%% Constants
center = -.03;
%% Compare the 6dof joint's movement of the millipede simulations
data1 = load('Centi_6Legs_60deg_offset_data.mat');
px_1 = data1.data{1}.Values.Data;  
py_1 = data1.data{4}.Values;  
pz_1 = data1.data{7}.Values.Data;    
data1 = load('Centi_8Legs_60deg_offset_data.mat');
px_2 = data1.data{1}.Values.Data;  
py_2 = data1.data{4}.Values;  
pz_2 = data1.data{7}.Values.Data;    
data1 = load('Milli_6Legs_60deg_offset_data.mat');
px_3 = data1.data{1}.Values.Data;  
py_3 = data1.data{4}.Values;  
pz_3 = data1.data{7}.Values.Data;    
data1 = load('Milli_8Legs_60deg_offset_data.mat');
px_4 = data1.data{1}.Values.Data;  
py_4 = data1.data{4}.Values;  
pz_4 = data1.data{7}.Values.Data;    

hold on 
% plot([-.1 .1],[center center],...
%      [0 0],[.1 -.1], 'r-')
plot(px_1,pz_1,'DisplayName', 'Centipede 6 Legs');
plot(px_2,pz_2, 'DisplayName', 'Centipede 8 Legs');
plot(px_3,pz_3, 'DisplayName', 'Millipede 6 Legs');
plot(px_4,pz_4, 'DisplayName', 'Millipede 8 Legs');
grid on
axis equal
legend();
xlabel('Distance(m)');
ylabel('Distance(m)');
title('Centipede V. Millipede Center of Gravity Comparison from Simulation')

%% Compare Position and Velocity
figure();
subplot(211);
hold on
plot(py_1.Time,abs(py_1.Data),'DisplayName', 'Centipede 6 Legs');
plot(py_2.Time,abs(py_2.Data), 'DisplayName', 'Centipede 8 Legs');
plot(py_3.Time,abs(py_3.Data), 'DisplayName', 'Millipede 6 Legs');
plot(py_4.Time,abs(py_4.Data), 'DisplayName', 'Millipede 8 Legs');
grid on
legend();
xlabel('time(s)');
ylabel('Distance(m)');
title('Centipede V. Millipede Distance Travelled from Simulations')

subplot(212);
hold on
p2(1)=plot(py_1.Time(1:end-1),abs(movmean(diff(py_1.Data),100)), 'DisplayName', 'Centipede 6 Legs');
p2(2)=plot(py_2.Time(1:end-1),abs(movmean(diff(py_2.Data),100)), 'DisplayName', 'Centipede 8 Legs');
p2(3)=plot(py_3.Time(1:end-1),abs(movmean(diff(py_3.Data),100)), 'DisplayName', 'Millipede 6 Legs');
p2(4)=plot(py_4.Time(1:end-1),abs(movmean(diff(py_4.Data),100)), 'DisplayName', 'Millipede 8 Legs');

% plot(py_1.Time(1:end-1),abs(movmean(diff(py_1.Data),10)),'k--');

grid on
legend();
xlabel('time(s)');
ylabel('Distance(m)');
title('Centipede V. Millipede Velocity from Simulations')
