% Yeet this is gonna be mi proyecto
% anotha test

b = 0.028;
r = 0.45;
k = 0.067;
j = 0.0113;
kp = 217612;
kd = 1692;
ki = 100;


%% Part e
sys_e = tf([(k/r)*kd k/r*kp],[j (b+(k^2)/r+k/r*kd) k/r*kp]);

figure
subplot(3,1,1)
impulse(sys_e)
subplot(3,1,2)
step(sys_e)
subplot(3,1,3)
rlocus(sys_e)

%% Part f

sys_f = tf([k/r],[j (b+(k^2)/r+k/r*kd) k/r*kp]);

figure
subplot(3,1,1)
impulse(sys_f)
subplot(3,1,2)
step(sys_f)
subplot(3,1,3)
rlocus(sys_f)

%% Part g

sys_g = tf([k/r 0], [j (b+(k^2)/r+k/r*kd) k/r*kp k/r*ki]);

figure
subplot(3,1,1)
impulse(sys_g)
subplot(3,1,2)
step(sys_g)
subplot(3,1,3)
rlocus(sys_g)