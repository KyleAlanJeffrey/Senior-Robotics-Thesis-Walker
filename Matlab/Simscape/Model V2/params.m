clc
clear all
close all
%% Variables  mm

foot_width = 10;
foot_height = 5;

foot_static_fric = 1;
foot_dynamic_fric = .9;

body_seg_normal_force_stiffness = 1e5;
body_seg_normal_force_damping = 1e5;

%% Leg Motion Generator from Garcia 2015 Equations
time=[.01:.01:10]';
t_f=10;
dt = .01; %Time step
w = .5*pi; % Rad per second;
R = 1; % eliptical width radius
K = 1; % eliptical height radius
H = 1; % height of wave from ground

theta_p = pi; % Angle of Propulsive 
state = 2; % 1 propulsive, 2 transfer
t_switch = theta_p/w;
x_f=@(tau) -R*cos(tau);
y_f=@(tau)H-K*(1-sin(tau));
for i=1:t_f/dt
    t = i*dt;
    tau = w*t;
    theta(i) = tau;
    x(i)=x_f(tau);
    y(i)=y_f(tau);    
    
    if mod(t,t_switch) == 0 %Switch between propulsive and transfer leg state
       if state == 1;
           state=2;
       else
           state=1;
           y_h = y(i);
       end
    end
    if state==1
        y(i) = y_h;
    end
%     plot([0 x(i)],[0 y(i)],'-r');
    xlim([-1 1]);
    ylim([-1 1]);
%     pause(1/60);
%     hold off
end
 ttx = timetable(seconds(time),x');
 tty = timetable(seconds(time),y');
ds = Simulink.SimulationData.Dataset;
ds = ds.add(ttx,'var1');
ds = ds.add(tty,'var2');

%%