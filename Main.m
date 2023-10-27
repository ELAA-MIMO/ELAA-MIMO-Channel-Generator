%==================================================================================%
%                                     Main.m                                       %
%                              ELAA Channel Generator                              %
%                Author: Jiuyu Liu                 Date: 14.07.2022                %
%               Development Environment: Matlab R2021a 64-bit (win64)              %
%==================================================================================%

% Clearing the workspace and command window for a fresh start.
clear; clc;

%% Parameter Configuration
% Define the system parameters for the ELAA channel generation.

% Determines the Line-of-Sight (LoS) condition for the channel.
parameter.LoS_State = 1;   % 1: Mixed LoS/NLoS links; 2: i.n.d. Rayleigh; 3: i.n.d. Rice

% Determines if shadowing effects are considered in the channel.
parameter.Shadow = 1;      % 0: without shadowing effects 1: with shadowing effects;

% Total number of service antennas in the ELAA system.
parameter.M = 2000;        

% Total number of user terminals (UTs) in the system.
parameter.N_ut = 10;       

% Number of antennas associated with each user equipment (UE).
parameter.N_ue = 4;        

% Specifies the maximum possible distance between any two user terminals.
parameter.rangeOfUT = 50;  

% Number of user terminals that act as reference points or reference UTs (RUs).
parameter.J = 2;           

% Defines the perpendicular distance from a user terminal to the ELAA system.
parameter.d_perp = 25;     

% Specifies the correlation distance for determining the Line-of-Sight (LoS) state.
parameter.d_los = 5000;    

% Specifies the correlation distance for shadowing effects in the channel.
parameter.d_sf = 15;       

%% Plot the Figure of LoS State and Received Signal Strength (RSS)
% Decide whether to visualize the LoS state and Received Signal Strength (RSS) for the generated channel.
% Flag to control plotting.
ifPlotFigure = 1;     % 0: don't plot the figure; 1: plot the figure

%% Channel Generation
% Generate the channel state information for the ELAA system based on the defined parameters.

% H: Matrix containing the channel state information for each user-to-ELAA link.
% LoS: Matrix indicating the Line-of-Sight (LoS) state for each user-to-ELAA link.
[H,LoS] = ELAA_Channel_Generator(parameter,ifPlotFigure);
