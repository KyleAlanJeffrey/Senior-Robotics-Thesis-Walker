clear all 
close all
clc

%%
%import data from 3d after effects
aeData = readmatrix('afterEffectsMotionData');
camShape = readmatrix('traj.csv');

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

figure()
hold on
plot(aeData(:,2),aeData(:,3));
plot(camShape(:,1),camShape(:,2))
axis equal
grid on
legend('Experimental Trajectory', 'Ideal Trajectory');
title('Trajectory of 3d Printed Leg vs. Ideal Trajectory')

%% Error Analysis
%aeData to polar coords
aeR = sqrt(aeData(:,2).^2 + aeData(:,3).^2);
aeTheta = rad2deg(atan2(aeData(:,3),aeData(:,2))) + 180;
camShapePolar = readmatrix('trajPolar.csv');

% Find a fit fot Radius Array to match array length to camShape
yyR = spline(aeTheta,aeR, linspace(0,360,401));
% yyR = ppval(ppR, linspace(0,2*pi,101));

figure()
subplot(121)
hold on
plot(linspace(0,360,401),yyR(:))
plot(rad2deg(camShapePolar(:,1)), camShapePolar(:,2)*-1)
legend('Experimental Trajectory', 'Ideal Trajectory');
title('Trajectory of 3d Printed Leg vs. Ideal Trajectory')
xlabel('Angular Position(deg)')
ylabel('Radial distance(cm)')
grid on

subplot(122)
plot(linspace(0,360,401), abs(-camShapePolar(:,2) - yyR(:)))
title('Error Between Print and Ideal Trajectory')
xlabel('Angular Position(deg)')
ylabel('Radial distance(cm)')
grid on

%% Plot angle tto time
figure()
plot(aeTheta)