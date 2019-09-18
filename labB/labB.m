clc;clear;clf;

%%
%LOAFING ALL DATA
load char_of_polarizer.txt;

load 1g2_750.txt;
load 1g2_750_halfwp.txt;
load 1g2_550.txt;
load 1g2_550_halfwp.txt;

load 2g2_750.txt;
load 2g2_750_halfwp.txt;
load 2g2_550.txt;
load 2g2_550_halfwp.txt;

load 3g2_750.txt;
load 3g2_750_halfwp.txt;
load 3g2_550.txt;
load 3g2_550_halfwp.txt;

%%
%ANALYZING DATA

%sorting
X1g2750 = sortrows(X1g2_750, 1);
X1g2550 = sortrows(X1g2_550, 1);
X1g2750halfwp = sortrows(X1g2_750_halfwp, 1);
X1g2550halfwp = sortrows(X1g2_550_halfwp, 1);

X2g2750 = sortrows(X2g2_750, 1);
X2g2550 = sortrows(X2g2_550, 1);
X2g2750halfwp = sortrows(X1g2_750_halfwp, 1);
X2g2550halfwp = sortrows(X1g2_550_halfwp, 1);

X3g2750 = sortrows(X3g2_750, 1);
X3g2550 = sortrows(X3g2_550, 1);
X3g2750halfwp = sortrows(X3g2_750_halfwp, 1);
X3g2550halfwp = sortrows(X3g2_550_halfwp, 1);

%seperating
charOfPolarizer = char_of_polarizer;
theta = deg2rad(charOfPolarizer(:,1));
volt = charOfPolarizer(:,2);

theta1g2750 = deg2rad(X1g2750(:,1));
volt1g2750 = X1g2750(:,2);
theta1g2750halfwp = deg2rad(X1g2750halfwp(:,1));
volt1g2750halfwp = X1g2750halfwp(:,2);
theta1g2550 = deg2rad(X1g2550(:,1));
volt1g2550 = X1g2550(:,2);
theta1g2550halfwp = deg2rad(X1g2550halfwp(:,1));
volt1g2550halfwp = X1g2550halfwp(:,2);

theta2g2750 = deg2rad(X2g2750(:,1));
volt2g2750 = X2g2750(:,2);
theta2g2750halfwp = deg2rad(X2g2750halfwp(:,1));
volt2g2750halfwp = X2g2750halfwp(:,2);
theta2g2550 = deg2rad(X2g2550(:,1));
volt2g2550 = X2g2550(:,2);
theta2g2550halfwp = deg2rad(X2g2550halfwp(:,1));
volt2g2550halfwp = X2g2550halfwp(:,2);

theta3g2750 = deg2rad(X3g2750(:,1));
volt3g2750 = X3g2750(:,2);
theta3g2750halfwp = deg2rad(X3g2750halfwp(:,1));
volt3g2750halfwp = X3g2750halfwp(:,2);
theta3g2550 = deg2rad(X3g2550(:,1));
volt3g2550 = X3g2550(:,2);
theta3g2550halfwp = deg2rad(X3g2550halfwp(:,1));
volt3g2550halfwp = X3g2550halfwp(:,2);

%%
%PLOTTING DATA

%CHARACTERIZATION OF THE POLARIZER
figure(1)
subplot(1,2,1)
plot(theta, volt)
    suptitle('CHARACTERIZATION OF THE POLARIZER')
subplot(1,2,2)
polarscatter(theta, volt)
    hold on
polarplot(theta, volt, 'b-')
    ax = gca;
    degrees = 0;
    ax.RAxisLocation = degrees;
    rlim([0 100])
    hold off
    
%SAMPLE 1G2 @750nm
figure(2)
subplot(1,2,1)
scatter(theta1g2750, volt1g2750, 'co')
    suptitle('1G2 SAMPLE 750nm')
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
    
%SAMPLE 1G2 @550nm
figure(3)
subplot(1,2,1)
scatter(theta1g2550, volt1g2550, 'co')
    suptitle('1G2 SAMPLE 550nm')
    hold on
plot(theta1g2550, volt1g2550, 'c-')
    hold on
scatter(theta1g2550halfwp, volt1g2550halfwp, 'bo')
    hold on
plot(theta1g2550halfwp, volt1g2550halfwp, 'b-')
    hold off
subplot(1,2,2)
polarscatter(theta1g2550, volt1g2550, 'co')
    hold on
polarplot(theta1g2550, volt1g2550, 'c-')
    hold on
polarscatter(theta1g2550halfwp, volt1g2550halfwp, 'bo')
    hold on
polarplot(theta1g2550halfwp, volt1g2550halfwp, 'b-')
    hold off
    ax = gca;
    degrees = 0;
    ax.RAxisLocation = degrees;
    rlim([22 50])
    
    
%SAMPLE 2G2 @750nm
figure(4)
subplot(1,2,1)
scatter(theta2g2750, volt2g2750, 'co')
    suptitle('2G2 SAMPLE 750nm')
    hold on
plot(theta2g2750, volt2g2750, 'c-')
    hold on
scatter(theta2g2750halfwp, volt2g2750halfwp, 'bo')
    hold on
plot(theta2g2750halfwp, volt2g2750halfwp, 'b-')
    hold off
subplot(1,2,2)
polarscatter(theta2g2750, volt2g2750, 'co')
    hold on
polarplot(theta2g2750, volt2g2750, 'c-')
    hold on
polarscatter(theta2g2750halfwp, volt2g2750halfwp, 'bo')
    hold on
polarplot(theta2g2750halfwp, volt2g2750halfwp, 'b-')
    hold off
    ax = gca;
    degrees = 0;
    ax.RAxisLocation = degrees;
    rlim([55 130])
    
%SAMPLE 2G2 @550nm
figure(5)
subplot(1,2,1)
scatter(theta2g2550, volt2g2550, 'co')
    suptitle('2G2 SAMPLE 550nm')
    hold on
plot(theta2g2550, volt2g2550, 'c-')
    hold on
scatter(theta2g2550halfwp, volt2g2550halfwp, 'bo')
    hold on
plot(theta2g2550halfwp, volt2g2550halfwp, 'b-')
    hold off
subplot(1,2,2)
polarscatter(theta2g2550, volt2g2550, 'co')
    hold on
polarplot(theta2g2550, volt2g2550, 'c-')
    hold on
polarscatter(theta2g2550halfwp, volt2g2550halfwp, 'bo')
    hold on
polarplot(theta2g2550halfwp, volt2g2550halfwp, 'b-')
    hold off
    ax = gca;
    degrees = 0;
    ax.RAxisLocation = degrees;
    rlim([22 50])
    
%SAMPLE 3G2 @750nm
figure(6)
subplot(1,2,1)
scatter(theta3g2750, volt3g2750, 'co')
    suptitle('3G2 SAMPLE 750nm')
    hold on
plot(theta3g2750, volt3g2750, 'c-')
    hold on
scatter(theta3g2750halfwp, volt3g2750halfwp, 'bo')
    hold on
plot(theta3g2750halfwp, volt3g2750halfwp, 'b-')
    hold off
subplot(1,2,2)
polarscatter(theta3g2750, volt3g2750, 'co')
    hold on
polarplot(theta3g2750, volt3g2750, 'c-')
    hold on
polarscatter(theta3g2750halfwp, volt3g2750halfwp, 'bo')
    hold on
polarplot(theta3g2750halfwp, volt3g2750halfwp, 'b-')
    hold off
    ax = gca;
    degrees = 0;
    ax.RAxisLocation = degrees;
    rlim([55 110])
    
%SAMPLE 3G2 @550nm
figure(7)
subplot(1,2,1)
scatter(theta3g2550, volt3g2550, 'co')
    suptitle('3G2 SAMPLE 550nm')
    hold on
plot(theta3g2550, volt3g2550, 'c-')
    hold on
scatter(theta3g2550halfwp, volt3g2550halfwp, 'bo')
    hold on
plot(theta3g2550halfwp, volt3g2550halfwp, 'b-')
    hold off
subplot(1,2,2)
polarscatter(theta3g2550, volt3g2550, 'co')
    hold on
polarplot(theta3g2550, volt3g2550, 'c-')
    hold on
polarscatter(theta3g2550halfwp, volt3g2550halfwp, 'bo')
    hold on
polarplot(theta3g2550halfwp, volt3g2550halfwp, 'b-')
    hold off
    ax = gca;
    degrees = 0;
    ax.RAxisLocation = degrees;
    rlim([30 60])