clc;
clear;
close all;

run parameters.m
num=Kt;
den= [(J*L),(L*B+R*J),(R*B+Kt*Kb)];

G=tf(num,den);

disp("poles of the system")
pole(G)
