clc 
clear all
close all

%% Variables
leg_width = .2;
leg_height = 1;

foot_width = leg_width;
foot_height = .1;

foot_static_fric = 1;
foot_dynamic_fric = .9;

body_seg_normal_force_stiffness = 1e5;
body_seg_normal_force_damping = 1e5;

ground_plane_z = -1.5;
ground_width = 10;
ground_length = 50;
