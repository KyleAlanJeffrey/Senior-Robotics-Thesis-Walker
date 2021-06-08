%% Variables  mm

foot_width = 5;
foot_height = 5;

foot_static_fric = 1;
foot_dynamic_fric = .9;

body_seg_normal_force_stiffness = 1e5;
body_seg_normal_force_damping = 1e5;

%% Leg Motion Generation
leg_rotar_radius = 6.5/1000; % Radius of rotation joint
leg_rotar_w  = pi;
w=leg_rotar_w;
dt = .01;


[x_t, y_t,t_series] = Trajectory_Func('n',dt,w);
ttx = timetable(seconds(t_series'),(y_t)');
tty = timetable(seconds(t_series'),(x_t)');

tsx = timeseries(x_t,t_series);
tsy = timeseries(y_t,t_series);

ds = Simulink.SimulationData.Dataset;
ds = ds.add(ttx,'x');
ds = ds.add(tty,'y');

save Dat ds
% save Ydat tsy