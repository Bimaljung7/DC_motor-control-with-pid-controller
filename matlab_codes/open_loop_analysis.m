clc;
clear;
close all;

run motor_model.m

figure;
step(G,5)% input are the transfer function and time 
grid on;
title("open loop analysis")
xlabel("Time(seconds)")
ylabel('speed(rad/sec)')

%step response characteristics
info=stepinfo(G)
dcgain(G)
ess=abs(1-dcgain(G))

figure;
bode(G)
grid on
title('open loop bode plot of dc motor speed')