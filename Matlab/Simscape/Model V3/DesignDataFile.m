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
smiData.RigidTransform(1).translation = [0 -0.024 0.012500000000000001];  % m
smiData.RigidTransform(1).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(1).axis = [0.57735026918962584 0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(1).ID = 'B[MUYGgFUfiG4FNCS+Q:-:MIAl/b4slLyy82g7U]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [0.01 -0.024 0.012749999999999999];  % m
smiData.RigidTransform(2).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(2).axis = [0.57735026918962584 0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(2).ID = 'F[MUYGgFUfiG4FNCS+Q:-:MIAl/b4slLyy82g7U]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [0.01 -0.027 0.023125];  % m
smiData.RigidTransform(3).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(3).axis = [1 0 0];
smiData.RigidTransform(3).ID = 'B[MIAl/b4slLyy82g7U:-:MvZQU3EDKoJ4AA7Nt]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [0.01 -0.029999999999999999 0.023125];  % m
smiData.RigidTransform(4).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(4).axis = [1 0 0];
smiData.RigidTransform(4).ID = 'F[MIAl/b4slLyy82g7U:-:MvZQU3EDKoJ4AA7Nt]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [0 0.009821794 -0.0031673489999999999];  % m
smiData.RigidTransform(5).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(5).axis = [1 0 0];
smiData.RigidTransform(5).ID = 'RootGround[MUYGgFUfiG4FNCS+Q]';

%Translation Method - Cartesian (Body Segment)
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [0 0.00053648499999999996 -0.0077882300000000002];  % m
smiData.RigidTransform(6).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(6).axis = [0 0.70710678118654746 0.70710678118654757];
smiData.RigidTransform(6).ID = 'RootGround[Mr+OPJKQq3lyAA1jv]';


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
smiData.Solid(1).mass = 0.0016205499999999999;  % kg
smiData.Solid(1).CoM = [0.01 -0.034347181999999997 0.022650001999999999];  % m
smiData.Solid(1).MoI = [9.569999999999999e-07 1.0999999999999999e-08 9.540000000000001e-07];  % kg*m^2
smiData.Solid(1).PoI = [2.6000000000000001e-08 0 0];  % kg*m^2
smiData.Solid(1).color = [0.627450980 0.627450980 0.627450980];
smiData.Solid(1).opacity = 1.000000000;
smiData.Solid(1).ID = 'JFD*:*ea37e3d8769d68f9fc147735';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 0.018171001499999999;  % kg
smiData.Solid(2).CoM = [0 -0.0074974730000000002 0.0090176000000000006];  % m
smiData.Solid(2).MoI = [3.8380000000000004e-06 1.646e-06 4.3150000000000002e-06];  % kg*m^2
smiData.Solid(2).PoI = [-1.0999999999999999e-08 -0 0];  % kg*m^2
smiData.Solid(2).color = [0.627450980 0.627450980 0.627450980];
smiData.Solid(2).opacity = 1.000000000;
smiData.Solid(2).ID = 'JFL*:*ea37e3d8769d68f9fc147735';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 0.00047517399000000001;  % kg
smiData.Solid(3).CoM = [0.01 -0.024 0.018094662000000001];  % m
smiData.Solid(3).MoI = [8.9999999999999995e-09 1e-08 4.0000000000000002e-09];  % kg*m^2
smiData.Solid(3).PoI = [0 0 0];  % kg*m^2
smiData.Solid(3).color = [0.627450980 0.627450980 0.627450980];
smiData.Solid(3).opacity = 1.000000000;
smiData.Solid(3).ID = 'JFH*:*ea37e3d8769d68f9fc147735';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 0.049853431400000002;  % kg
smiData.Solid(4).CoM = [2.7999999999999999e-08 0.0065999530000000004 0.025000002];  % m
smiData.Solid(4).MoI = [2.0528999999999999e-05 3.4724000000000002e-05 3.6922999999999999e-05];  % kg*m^2
smiData.Solid(4).PoI = [0 -0 0];  % kg*m^2
smiData.Solid(4).color = [0.627450980 0.627450980 0.627450980];
smiData.Solid(4).opacity = 1.000000000;
smiData.Solid(4).ID = 'JFD*:*350bbf758acc822c9cdf3968';

%Inertia Type - Custom
%Visual Properties - Simple (Body Segment)
smiData.Solid(5).mass = 0.039242998799999998;  % kg
smiData.Solid(5).CoM = [1.3000000000000001e-08 0.0069411050000000004 -0];  % m
smiData.Solid(5).MoI = [1.4868000000000001e-05 2.0752999999999999e-05 2.4391000000000001e-05];  % kg*m^2
smiData.Solid(5).PoI = [0 0 0];  % kg*m^2
smiData.Solid(5).color = [0.627450980 0.627450980 0.627450980];
smiData.Solid(5).opacity = 1.000000000;
smiData.Solid(5).ID = 'JFH*:*d5c4e871222b4ecdf6ce8cd0';

%Inertia Type - Custom
%Visual Properties - Simple (Body Segment Connection Plate)
smiData.Solid(6).mass = 0.00099267045299999989;  % kg
smiData.Solid(6).CoM = [-0 0.0074999999999999997 0.056000000000000001];  % m
smiData.Solid(6).MoI = [9.2999999999999999e-08 9.8000000000000004e-08 6.9999999999999998e-09];  % kg*m^2
smiData.Solid(6).PoI = [0 0 0];  % kg*m^2
smiData.Solid(6).color = [0.627450980 0.627450980 0.627450980];
smiData.Solid(6).opacity = 1.000000000;
smiData.Solid(6).ID = 'JFD*:*d5c4e871222b4ecdf6ce8cd0';

%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the PrismaticJoint structure array by filling in null values.
smiData.PrismaticJoint(2).Pz.Pos = 0.0;
smiData.PrismaticJoint(2).ID = '';

smiData.PrismaticJoint(1).Pz.Pos = 7.7037197775489434e-34;  % m
smiData.PrismaticJoint(1).ID = '[MUYGgFUfiG4FNCS+Q:-:MIAl/b4slLyy82g7U]';

smiData.PrismaticJoint(2).Pz.Pos = 3.4694469519536142e-18;  % m
smiData.PrismaticJoint(2).ID = '[MIAl/b4slLyy82g7U:-:MvZQU3EDKoJ4AA7Nt]';

