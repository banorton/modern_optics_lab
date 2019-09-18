clc;clear;clf;

%%
%LOAFING ALL DATA
load char_of_polarizer.txt;
load 1g2_750.txt;
load 1g2_750_halfwp.txt;

%%
%ANALYZING DATA

charOfPolarizer = char_of_polarizer;
numData = numel(charOfPolarizer(:,1));
theta = deg2rad(charOfPolarizer(:,1));
volt = charOfPolarizer(:,2);

theta1g2750 = deg2rad(X1g2_750(:,1));
volt1g2750 = X1g2_750(:,2);
theta1g2750halfwp = deg2rad(X1g2_750_halfwp(:,1));
volt1g2750halfwp = X1g2_750_halfwp(:,2);

%%
%PLOTTING DATA

figure(1)
subplot(1,2,1)
plot(theta, volt)
subplot(1,2,2)
polarscatter(theta, volt)
    hold on
polarplot(theta, volt, 'b-')
    hold off
    ax = gca;
    degrees = 0;
    ax.RAxisLocation = degrees;
    rlim([0 100])
    
figure(2)
subplot(1,2,1)
scatter(theta1g2750, volt1g2750, 'co')
    hold on
plot(theta1g2750, volt1g2750, 'c-')
    hold on
scatter(theta1g2750halfwp, volt1g2750halfwp, 'bo')
    hold on
plot(theta1g2750halfwp, volt1g2750halfwp, 'b-')
    hold off
subplot(1,2,2)
polarscatter(theta1g2750, volt1g2750, 'co')
    hold on
polarplot(theta1g2750, volt1g2750, 'c-')
    hold on
polarscatter(theta1g2750halfwp, volt1g2750halfwp, 'bo')
    hold on
polarplot(theta1g2750halfwp, volt1g2750halfwp, 'b-')
    hold off
    ax = gca;
    degrees = 0;
    ax.RAxisLocation = degrees;
    rlim([70 130])