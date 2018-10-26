function [outputArg1,outputArg2] = proj1_alex(inputArg1,inputArg2)
%% Alex Topping
%% ECE 441 Project 1
%% DC Motor Position Control
clear all
close all
clc

%% Constants
J = 1.13 * 10^(-2); % rotor intertia
b = 0.028; % viscous friction coefficient 
K = 0.067; % 
R = 0.45; % Armature resitance
Kp = 10000;

%% Transfer Equations
syms s
num = [(K/R)];
plant_denom = J*s^2 + (b+(K^2)/R)*s ;
plant = tf(num, sym2poly(plant_denom))
rlocus(plant)
title("plant")
hold on

figure
system = feedback(Kp*plant,1)
rlocus(system)
title("system")


W = tf(1, [1 0]);
disturbance = feedback(plant*Kp*W,1);

step(disturbance)
end

