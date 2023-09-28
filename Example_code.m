%% EDITABLE PART
clear all;
close all;
clc;


%% Select files to run, as wanted
% Interior model files:

%nom_file='Moon_Garcia_2019_M1';
%nom_file='Moon_Garcia_2019_M2';
%nom_file='Moon_Weber_2011';
%nom_file='EuropaSolidCore_v3';
%nom_file='EuropaLiquidCore_v3';
nom_file='EuropaNoCore_v3';

% Orbital properties files:
% Moon_e;
Europa_e;

bool_retrograde = 0; % 0 if orbital motion is prograde, 1 if orbital motion is retrograde



%% Parameters for simulation, as wanted
% Only single numerical values unless specified

cohe = 5000; % Cohesion, Pa, can be either single value or 1D array
friction = (1e-5)*pi/180; % Angle of internal friction, rad, can be either single value or 1D array
nbtranche = 5; 

% Mesh and position for plots ; must be even
N_lat=12; % Colatitude meshing
N_lon=32; % Longitude meshing
Frac_lat=100; % lat(1) = 1/fraclat*lat(2)to avoid 0 in denominator
Nt=8; % Orbital resolution

% Indexes for plot; must be between 1 and their respective N
time_plot=floor(Nt/4)+1; % Integer between 1 and Nt
lat_plot=1; % Integer between 1 and Nt
lon_plot=1; % Integer between 1 and Nt

% Must be between 0 (center) and 1 (surface)
radius_plot=0.9;


%% MAIN CALL: 
% Call to main code and run with timer

path=strcat(pwd,filesep);
cd 'Matlab files'
tic; % Timer initialisation
Main_Code;

toc; % Display timer
cd ..

