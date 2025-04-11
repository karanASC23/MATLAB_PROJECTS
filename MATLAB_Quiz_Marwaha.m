%Ethan. Charlotte   
%Created by Karan Marwaha

clear all
clc

E_bus = -.25; %Elascity of Demand of bus
R_old= 100000000; %Current # of bus trips per year
F_old= 1.70; %Current average bus fare




F_new= [1.7:.1:6]; %New bus fare

R_new = (E_bus * ((F_new -F_old) / F_old) * R_old) + R_old;

Revenue_new = R_new .* F_new;


figure();
subplot(2, 1, 1);
plot(F_new, R_new);
title("Change in ridership");
xlabel("Fare ($)");
ylabel("Ridership")

subplot(2, 1, 2);
plot(F_new, Revenue_new);
title("Change in Revenue");
xlabel("Fare ($)");
ylabel("Revenue ($)");


