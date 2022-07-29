%==================================================================================%
%                                                                                  %
%                                     Main.m                                       %
%                                                                                  %
%                              ELAA Channel Generator                              %
%----------------------------------------------------------------------------------%
%                                                                                  %
%                Author: Jiuyu Liu                 Date: 14.07.2022                %
%                                                                                  %
%               Development Environment: Matlab R2021a 64-bit (win64)              %
%                                                                                  %
%==================================================================================%
clear;clc

%% Parameter Configuration
parameter.LoS_State = 1;   % 1: Mixed LoS/NLoS links; 2: i.n.d. Rayleigh; 3: i.n.d. Rice
parameter.Shadow = 1;      % 0: without shadowing effects 1: with shadowing effects;
parameter.M = 2000;        % Number of service (ELAA) antennas
parameter.N_ut = 10;       % Number of user terminals (UTs)
parameter.N_ue = 4;        % Number of antennas per UT
parameter.rangeOfUT = 50;  % The maximum inter-UTs distance.
parameter.J = 2;           % Number of reference UTs (RUs)
parameter.d_perp = 25;     % Perpendicular UT-to-ELAA distance
parameter.d_los = 5000;    % Correlation distance of LoS state
parameter.d_sf = 15;       % Correlation distance of shadowing effects

%% Plot the Figure of LoS State and Received Signal Strength (RSS)
ifPlotFigure = 1;     % 0: donnot plot the figure; 1: plot the figure

%% Channel Generation
% H: the channel state information
% LoS: the LoS state of every user-to-ELAA links
[H,LoS] = ELAA_Channel_Generator(parameter,ifPlotFigure);
