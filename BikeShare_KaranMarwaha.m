%BikeShare
%Created by Karan Marwaha, 2025

clear all 
clc 

% track the movement of bikes over time in Boston and Cambridge 
Boston = 100
Cambridge = 100

%%
boston_new = (Boston - round(.05 * Boston)) + round(.03 * Cambridge)
cambridge_new = (Cambridge + round(.05 * Boston)) - round(.03 * Cambridge)

Boston = boston_new
Cambridge = cambridge_new
    