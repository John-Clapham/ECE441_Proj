clc
clear all
%ECE441_Comp_Proj
%DC Motor position control
%John_Clapham 10/22/18

b = 0.028;
j = 1.13*10^-2;
r = 0.45;
k = 0.067;
kp = 217612;
kd = 1692;

temp = (b+(((k^2)+(kd*k))/r));
numerator1 = k/r;

sys = tf([(kd*k/r) ((kp*k)/r)],[j temp (kp*k)/r]);

figure
rlocus(sys)

figure
subplot(211)
impulse(sys)
subplot(212)
step(sys)
%alex likes gitextensions too much

