% Simscape(TM) Multibody(TM) version: 7.2

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(5).translation = [0.0 0.0 0.0];
smiData.RigidTransform(5).angle = 0.0;
smiData.RigidTransform(5).axis = [0.0 0.0 0.0];
smiData.RigidTransform(5).ID = '';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [0.01 0 0.035000000000000003];  % m
smiData.RigidTransform(1).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(1).axis = [-0.57735026918962584 0.57735026918962584 -0.57735026918962584];
smiData.RigidTransform(1).ID = 'B[MGXKwdHZrMJxynwCV:-:MqdgqTIkWBFugKydn]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [-0.059999999999999998 0 0.035000001000000003];  % m
smiData.RigidTransform(2).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(2).axis = [-0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(2).ID = 'F[MGXKwdHZrMJxynwCV:-:MqdgqTIkWBFugKydn]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [0 0 0];  % m
smiData.RigidTransform(3).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(3).axis = [1 0 0];
smiData.RigidTransform(3).ID = 'B[Mxwzz2eNMv4JyFafR:-:MGXKwdHZrMJxynwCV]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [0 0 0];  % m
smiData.RigidTransform(4).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(4).axis = [1 0 0];
smiData.RigidTransform(4).ID = 'F[Mxwzz2eNMv4JyFafR:-:MGXKwdHZrMJxynwCV]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [0 0 0];  % m
smiData.RigidTransform(5).angle = 0;  % rad
smiData.RigidTransform(5).axis = [0 0 0];
smiData.RigidTransform(5).ID = 'RootGround[Mxwzz2eNMv4JyFafR]';


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(3).mass = 0.0;
smiData.Solid(3).CoM = [0.0 0.0 0.0];
smiData.Solid(3).MoI = [0.0 0.0 0.0];
smiData.Solid(3).PoI = [0.0 0.0 0.0];
smiData.Solid(3).color = [0.0 0.0 0.0];
smiData.Solid(3).opacity = 0.0;
smiData.Solid(3).ID = '';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 0.011982936099999999;  % kg
smiData.Solid(1).CoM = [-0 -0 0.034120245];  % m
smiData.Solid(1).MoI = [3.3599999999999999e-07 1.4099e-05 1.3932e-05];  % kg*m^2
smiData.Solid(1).PoI = [0 0 0];  % kg*m^2
smiData.Solid(1).color = [0.627450980 0.627450980 0.627450980];
smiData.Solid(1).opacity = 1.000000000;
smiData.Solid(1).ID = 'JFD*:*4302f9d1266cc54e5710dce0';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 0.00742693346;  % kg
smiData.Solid(2).CoM = [-0 0 0.030015966000000002];  % m
smiData.Solid(2).MoI = [1.342e-06 1.3039999999999999e-06 4.2e-07];  % kg*m^2
smiData.Solid(2).PoI = [0 0 0];  % kg*m^2
smiData.Solid(2).color = [0.627450980 0.627450980 0.627450980];
smiData.Solid(2).opacity = 1.000000000;
smiData.Solid(2).ID = 'JFH*:*4302f9d1266cc54e5710dce0';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 0.120636386;  % kg
smiData.Solid(3).CoM = [4.8800000000000003e-07 0.00153199 0.011820743];  % m
smiData.Solid(3).MoI = [6.1851000000000001e-05 5.7250000000000002e-05 0.00010637300000000001];  % kg*m^2
smiData.Solid(3).PoI = [-6.9999999999999998e-09 -0 2.0000000000000001e-09];  % kg*m^2
smiData.Solid(3).color = [0.627450980 0.627450980 0.627450980];
smiData.Solid(3).opacity = 1.000000000;
smiData.Solid(3).ID = 'JFL*:*4302f9d1266cc54e5710dce0';


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the PrismaticJoint structure array by filling in null values.
smiData.PrismaticJoint(1).Pz.Pos = 0.0;
smiData.PrismaticJoint(1).ID = '';

smiData.PrismaticJoint(1).Pz.Pos = 0.051494362292795463;  % m
smiData.PrismaticJoint(1).ID = '[MGXKwdHZrMJxynwCV:-:MqdgqTIkWBFugKydn]';
5

%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(1).Rz.Pos = 0; % Start at location of real test
smiData.RevoluteJoint(1).ID = '';

smiData.RevoluteJoint(1).Rz.Pos = 3550;  % deg
smiData.RevoluteJoint(1).ID = '[Mxwzz2eNMv4JyFafR:-:MGXKwdHZrMJxynwCV]';


%% Added data
cam = readmatrix('shape.csv');
smiData.camx = cam(:,1);
smiData.camy = cam(:,2);

%% Variables
leg_width = .2;
leg_height = 1;

foot_width = .01;
foot_height = .005;
contact_ball_radius = .002;

foot_static_fric = 1;
foot_dynamic_fric = .9;

body_seg_normal_force_stiffness = 1e5;
body_seg_normal_force_damping = 1e5;

ground_plane_z = -1.5;
ground_width = 10;
ground_length = 50;

