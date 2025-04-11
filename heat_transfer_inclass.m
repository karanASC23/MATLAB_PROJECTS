%Heat Transfer
%Created by Karan Marwaha, 2025

%% Hot can in fridge 
clear all
clc

%Declare 
T0 =120; %intital  temp [degF]
Ts = 38; %fridge temp [degF]
k = .45; %heat transfer [1/hr]

time = 1:24; %time [hrs]
figure(1)
hold on

Temp = Ts + (T0 - Ts) * (exp(1)).^(-k * time); %heat transfer equation 
fprintf('The temp at %.1f is %.2f in degrees F.\n', time, Temp)
plot(time,Temp,'o')


