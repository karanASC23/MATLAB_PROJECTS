% 3.7: Series 
% Excercise 3.3
%Created by Karan Marwaha

%% uses a loop to compute the 10 elements of A directly in a geometric sequence
clear all
clc
a = 1 %first element 
r = (1/2)  %ratio of successive elements 
for i=2:10
    a = a * (1/2)^(i-1)
end
