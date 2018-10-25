function [outputArg1,outputArg2] = proj1_alex(inputArg1,inputArg2)
%% Alex Topping
%% ECE 441 Project 1
%% DC Motor Position Control


%% Constants
J = 1.13 * 10^(-2); % rotor intertia
b = 0.028; % viscous friction coefficient 
K = 0.067; % 
R = 0.45; % Armature resitance

%% Equation
syms v theta s THETA V % capitalized variables are for use in s-domain

theta_dot = diff(theta);
coeff = b + (K^2)/R


term1 = J * (s^2) * THETA
term2 = coeff * s * THETA
term3 = (K/R)*V


num = factor(term1 + term2, THETA)
denom = factor(term3, V)

tf = num(1)/denom(1)


end

