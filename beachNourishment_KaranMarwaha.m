%beach nourishment HW 9
%Created by Karan Marwaha, 2025

clear all 
clc

%calculates the value of y at given values of x and t
% in a evolution of a beach profile of a rectangular beach fill

%% known variables
H_b = .71; %Breaking wave height [m]
g = 9.81; %gravity constast on Earth [m/s^2]
k = .78; %breaking ratio 
s = 2.65; %specfic gravity of sediment 
p = .4; %porosity
B = 1.22; %berm height [m]
d_c = 7.62; %closure depth [m]

G = (k * (H_b)^(5/2) * sqrt(g/k))/(8* (s - 1) * (1 - p) * (d_c + B)); %longshore diffusivity [length^2/time]
t = 3.154e+7; %one year [s]
x = 0; %[m]
L = 2000; %initial fill length [m]
y = 40; %[m]
%y = (W/2) * (erf((L/(4 * sqrt(G * t))) * (((2 * x)/ L) + 1)) - ...
    %erf((L / (4 * sqrt(G * t))) * ...
    %(((2 * x)/ L) - 1))) ; %evolution of beach profile of a rectangular beach fill

    
%% a) (y = 40 value at x = 0) after one year 
W = 2 * (y / (erf((L/(4 * sqrt(G * t))) * ...
        (((2 * x)/ L) + 1)) - ...
    erf((L / (4 * sqrt(G * t))) * ...
    (((2 * x)/ L) - 1)))); % initial beach width, W [m] 

%% b) maximum beach length
t = t * 10; % ten years [s]

y = (W/2) * (erf((L/(4 * sqrt(G * t))) * ...
   (((2 * x)/ L) + 1)) - ...
   erf((L / (4 * sqrt(G * t))) * ...
   (((2 * x)/ L) - 1))); %maximum beach width after 10 years[m]

    
%% c) beach width length at edge of fill(x= L/2) @ 1 year mark?
x = L/2; %[m]
y = (W/2) * (erf((L/(4 * sqrt(G * t))) * ...
   (((2 * x)/ L) + 1)) - ...
   erf((L / (4 * sqrt(G * t))) * ...
   (((2 * x)/ L) - 1))) %evolution of beach profile of a rectangular beach fill

%% d) how much itme does it take for the sand to fill
x= 4000; %[m]
y = .01; %[m]
for t=0:.1:1 %for loop starting time at 0 and incrementing .1 until 1
  t = t * 3.154e+7;%t in seconds [s]
  y = (W/2) * (erf((L/(4 * sqrt(G * t))) * ...
  (((2 * x)/ L) + 1)) - ...
  erf((L / (4 * sqrt(G * t))) * ...
  (((2 * x)/ L) - 1))) ; %evolution of beach profile of a rectangular beach fill
  hold on
  plot(t, y, 'o')  %plots time vs y sunign symbol o
end
xlabel("time") %x axis label
ylabel("maximum beach width") %y axis label
title("Fill sand to reach 4000 m from the original fill centerline")%label title 
t_years = 18924000 / 3.154e+7; %time taken to sand to fill [yrs]
t_months = .6 *12; %time taken to sand to fill [monthes]