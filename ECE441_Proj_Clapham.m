%ECE441_Comp_Proj
%DC Motor position control
%John_Clapham 10/22/18
clear all
clc

b = 0.028;
j = 1.13*10^-2;
r = 0.45;
k = 0.067;
kp = 217612;
kd = 1692;
%1692
temp = (b+(((k^2)+(kd*k))/r));

sys = tf([(kd*k/r) ((kp*k)/r)],[j temp (kp*k)/r]);

figure
rlocus(sys)

figure
subplot(211)
impulse(sys)
subplot(212)
step(sys)


%%
%PID
b = 0.028;
j = 1.13*10^-2;
r = 0.45;
k = 0.067;
kp = 217612;
kd = 1692;
ki = 1;

numtemp = ((kd*k)/r);
numtemp1 = ((k+kp)/r);
numtemp2 = (ki*k)/r;
dentemp = b+(((k^2)+(kd*k))/r);
sys = tf([numtemp numtemp1 numtemp2],[j dentemp numtemp numtemp2]);
 
figure
subplot(211)
impulse(sys)
subplot(212)
step(sys)



