%HW_8: Part 1
%Created by Karan Marwaha, 2025

clear all
clc



%%Part 1 
%% a)

%a = 12
%b = 5.6
%c = (3 * a)/b^2
%d = ((a-b)^c)/c

%a/b + (d-c)/(d+c)-(d-b)^2

%abs(c-d+b/a)



%%
n=15;
ApproxVal = sqrt(2* pi * 15) * (n/exp(1))^n
TrueVal = factorial(n)
Error = (TrueVal - ApproxVal) /TrueVal

  
