% Yeet this is gonna be mi proyecto
% anotha test

b = 0.028;
r = 0.45;
k = 0.067;
j = 0.0113;
kp = 217612;
kd = 1692;



%% Part e
sys_e = tf([252 32400],[0.0113 252 32400]);

figure
subplot(2,1,1)
step(sys_e)
subplot(2,1,2)
impulse(sys_e)

%% Part f

sys_f = tf([0 0 0.149],[2459 25254838224 7050628800]);

figure
subplot(2,1,1)
step(sys_f)
subplot(2,1,2)
impulse(sys_f)