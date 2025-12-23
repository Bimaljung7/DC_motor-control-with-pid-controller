
Kp=50;

c_p=tf(Kp,1);
t_p=feedback(c_p*G,1);

figure;
step(t_p,5)
grid on;
title('closed loop response with p controller');
%info=stepinfo(t_p);
dcgain(t_p);
%ess=abs(1-dcgain(t_p));

%using pi controller
%kp=80;
%ki=120;

c_pi=tf([kp,ki],[1,0]);%numerator coefficient and denomerator coeff, as+b up and down..
t_pi=feedback(c_pi*G,1);

figure;
step(t_pi,5);
grid on;
%info=stepinfo(t_pi);
%%ess=abs(1-dcgain(t_pi));

%using pid controller
kp=100;
ki=200;
kd=1;

c_pid=pid(kp,ki,kd);
t_pid=feedback(c_pi*G,1);

figure;
step(t_pid,5)
grid on;
info=stepinfo(t_pid)
ess=abs(1-dcgain(t_pid))

