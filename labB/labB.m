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
set(gcf, 'color', 'w')
subplot(1,2,1)
plot(theta, volt)
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
set(gcf, 'color', 'w')
subplot(1,2,1)
scatter(theta1g2750, volt1g2750, 'co')
    suptitle('1G2 SAMPLE 750nm')
    hold on
plot(theta1g2750, volt1g2750, 'c-')
    hold on
scatter(theta1g2750halfwp, volt1g2750halfwp, 'bo')
    hold on
plot(theta1g2750halfwp, volt1g2750halfwp, 'b-')
    xlabel('Angle (rads)')
    ylabel('Voltage (mV)')
    xlim([0 theta1g2750halfwp(end)])
    clear legend1
    legend1 = legend('Data Points w/o Waveplate', 'Line Plot w/o Waveplate', 'Data Points w/ Waveplate', 'Line Plot w/ Waveplate', 'location', 'southwest');
    set(legend1, 'fontsize', 15)
    hold off
subplot(1,2,2)
polarscatter(theta1g2750, volt1g2750, 'co')
    hold on
polarplot(theta1g2750, volt1g2750, 'c-')
    hold on
polarscatter(theta1g2750halfwp, volt1g2750halfwp, 'bo')
    hold on
polarplot(theta1g2750halfwp, volt1g2750halfwp, 'b-')
    hold on
a1 = [deg2rad(80),deg2rad(80)];
b1 = [0, 200];
a2 = [pi/2, pi/2];
b2 = [0, 200];
a3 = linspace(pi/2,deg2rad(80),20);
b3 = ones(20,1).*100;
polarplot(a1, b1, 'linestyle', '-', 'color', 'black', 'linewidth', 1)
polarplot(a2, b2, 'linestyle', '-', 'color', 'black', 'linewidth', 1)
polarplot(a3, b3, 'linestyle', '-', 'color', 'black', 'linewidth', 1)
sample1750text = text(deg2rad(85), 102, '\theta = 10°');
set(sample1750text, 'rotation', 85);
    hold off
    ax = gca;
    degrees = 0;
    ax.RAxisLocation = degrees;
    rlim([70 130])
    
%SAMPLE 1G2 @550nm
figure(3)
set(gcf, 'color', 'w')
subplot(1,2,1)
scatter(theta1g2550, volt1g2550, 'co')
    suptitle('1G2 SAMPLE 550nm')
    hold on
plot(theta1g2550, volt1g2550, 'c-')
    hold on
scatter(theta1g2550halfwp, volt1g2550halfwp, 'bo')
    hold on
plot(theta1g2550halfwp, volt1g2550halfwp, 'b-')
    xlabel('Angle (rads)')
    ylabel('Voltage (mV)')
    xlim([0 theta1g2550halfwp(end)])
    clear legend1
    legend1 = legend('Data Points w/o Waveplate', 'Line Plot w/o Waveplate', 'Data Points w/ Waveplate', 'Line Plot w/ Waveplate', 'location', 'southwest');
    set(legend1, 'fontsize', 15)
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
set(gcf, 'color', 'w')
subplot(1,2,1)
scatter(theta2g2750, volt2g2750, 'co')
    suptitle('2G2 SAMPLE 750nm')
    hold on
plot(theta2g2750, volt2g2750, 'c-')
    hold on
scatter(theta2g2750halfwp, volt2g2750halfwp, 'bo')
    hold on
plot(theta2g2750halfwp, volt2g2750halfwp, 'b-')
    xlabel('Angle (rads)')
    ylabel('Voltage (mV)')
    xlim([0 theta2g2750halfwp(end)])
    clear legend1
    legend1 = legend('Data Points w/o Waveplate', 'Line Plot w/o Waveplate', 'Data Points w/ Waveplate', 'Line Plot w/ Waveplate', 'location', 'southwest');
    set(legend1, 'fontsize', 15)
subplot(1,2,2)
polarscatter(theta2g2750, volt2g2750, 'co')
    hold on
polarplot(theta2g2750, volt2g2750, 'c-')
    hold on
polarscatter(theta2g2750halfwp, volt2g2750halfwp, 'bo')
    hold on
polarplot(theta2g2750halfwp, volt2g2750halfwp, 'b-')
    hold on
clear a1
clear b1
clear a2
clear b2
clear a3
clear b3
a1 = [deg2rad(90),deg2rad(90)];
b1 = [-1000, 1000];
a2 = [deg2rad(75), deg2rad(75)];
b2 = [-1000, 1000];
a3 = linspace(pi/2,deg2rad(75),100);
b3 = ones(100,1).*100;
polarplot(a1, b1, 'linestyle', '-', 'color', 'black', 'linewidth', 1)
polarplot(a2, b2, 'linestyle', '-', 'color', 'black', 'linewidth', 1)
polarplot(a3, b3, 'linestyle', '-', 'color', 'black', 'linewidth', 1)
sample1750text = text(deg2rad(82.5), 102, '\theta = 15°');
set(sample1750text, 'rotation', 82.5);
    hold off
    ax = gca;
    degrees = 0;
    ax.RAxisLocation = degrees;
    rlim([55 130])
    
%SAMPLE 2G2 @550nm
figure(5)
set(gcf, 'color', 'w')
subplot(1,2,1)
scatter(theta2g2550, volt2g2550, 'co')
    suptitle('2G2 SAMPLE 550nm')
    hold on
plot(theta2g2550, volt2g2550, 'c-')
    hold on
scatter(theta2g2550halfwp, volt2g2550halfwp, 'bo')
    hold on
plot(theta2g2550halfwp, volt2g2550halfwp, 'b-')
    xlabel('Angle (rads)')
    ylabel('Voltage (mV)')
    xlim([0 theta2g2550halfwp(end)])
    clear legend1
    legend1 = legend('Data Points w/o Waveplate', 'Line Plot w/o Waveplate', 'Data Points w/ Waveplate', 'Line Plot w/ Waveplate', 'location', 'southwest');
    set(legend1, 'fontsize', 15)
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
set(gcf, 'color', 'w')
subplot(1,2,1)
scatter(theta3g2750, volt3g2750, 'co')
    suptitle('3G2 SAMPLE 750nm')
    hold on
plot(theta3g2750, volt3g2750, 'c-')
    hold on
scatter(theta3g2750halfwp, volt3g2750halfwp, 'bo')
    hold on
plot(theta3g2750halfwp, volt3g2750halfwp, 'b-')
    xlabel('Angle (rads)')
    ylabel('Voltage (mV)')
    xlim([0 theta3g2750halfwp(end)])
    clear legend1
    legend1 = legend('Data Points w/o Waveplate', 'Line Plot w/o Waveplate', 'Data Points w/ Waveplate', 'Line Plot w/ Waveplate', 'location', 'southwest');
    set(legend1, 'fontsize', 15)
subplot(1,2,2)
polarscatter(theta3g2750, volt3g2750, 'co')
    hold on
polarplot(theta3g2750, volt3g2750, 'c-')
    hold on
polarscatter(theta3g2750halfwp, volt3g2750halfwp, 'bo')
    hold on
polarplot(theta3g2750halfwp, volt3g2750halfwp, 'b-')
    hold on
clear a1
clear b1
clear a2
clear b2
clear a3
clear b3
angle1 = 88;
angle2 = 82;
anglediff = angle1-angle2;
textangle = (angle1+angle2)/2;
textheight = 82;
a1 = [deg2rad(angle1),deg2rad(angle1)];
b1 = [-1000, 1000];
a2 = [deg2rad(angle2), deg2rad(angle2)];
b2 = [-1000, 1000];
a3 = linspace(deg2rad(angle1),deg2rad(angle2),100);
b3 = ones(100,1).*80;
polarplot(a1, b1, 'linestyle', '-', 'color', 'black', 'linewidth', 1)
polarplot(a2, b2, 'linestyle', '-', 'color', 'black', 'linewidth', 1)
polarplot(a3, b3, 'linestyle', '-', 'color', 'black', 'linewidth', 1)
sample1750text = text(deg2rad(textangle), textheight, '\theta = ');
sample2750text = text(deg2rad(textangle), textheight+4, sprintf('%.f°',anglediff));
set(sample1750text, 'rotation', textangle);
set(sample2750text, 'rotation', textangle);
    hold off
    ax = gca;
    degrees = 0;
    ax.RAxisLocation = degrees;
    rlim([55 110])
    
%SAMPLE 3G2 @550nm
figure(7)
set(gcf, 'color', 'w')
subplot(1,2,1)
scatter(theta3g2550, volt3g2550, 'co')
    suptitle('3G2 SAMPLE 550nm')
    hold on
plot(theta3g2550, volt3g2550, 'c-')
    hold on
scatter(theta3g2550halfwp, volt3g2550halfwp, 'bo')
    hold on
plot(theta3g2550halfwp, volt3g2550halfwp, 'b-')
    xlabel('Angle (rads)')
    ylabel('Voltage (mV)')
    xlim([0 theta3g2550halfwp(end)])
    clear legend1
    legend1 = legend('Data Points w/o Waveplate', 'Line Plot w/o Waveplate', 'Data Points w/ Waveplate', 'Line Plot w/ Waveplate', 'location', 'southwest');
    set(legend1, 'fontsize', 15)
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