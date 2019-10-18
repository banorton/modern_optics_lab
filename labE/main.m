clear;clc;clf;
%% LOADING DATA
load b20_45.txt
load b20_63.3.txt
load B3_45.txt
load B3_63.3.txt
load b4_45.txt
load b4_63.3.txt
load sampleF_45.txt
load sampleF_63.3.txt
load Si_45.txt
load Si_63.3.txt

B2 = [b20_45,b20_63_3]';
B3 = [B3_45,B3_63_3]';
B4 = [b4_45,b4_63_3]';
F = [sampleF_45,sampleF_63_3]';
Si = [Si_45,Si_63_3]';
%% FIGURES

%SAMPLE B2
figure(1)
set(gcf, 'color', 'w')
plot(B2(1,:), B2(2,:), 'black')
hold on
plot(B2(3,:), B2(4,:), 'blue')
hold on
    lgd = legend('45° AOI', '63° AOI', 'location', 'southeast');
    set(lgd, 'fontsize', 20)
    hold on
    title('B2')
    hold on
    xlabel('Wavelength (nm)')
    ylabel('Reflectance (%)')
    hold on
    ylim([0 45])
    xlim([550 1020])
    hold off

%SAMPLE B3
figure(2)
set(gcf, 'color', 'w')
plot(B3(1,:), B3(2,:), 'black')
hold on
plot(B3(3,:), B3(4,:), 'blue')
hold on
    lgd = legend('45° AOI', '63° AOI', 'location', 'northeast');
    set(lgd, 'fontsize', 20)
    hold on
    title('B3')
    hold on
    xlabel('Wavelength (nm)')
    ylabel('Reflectance (%)')
    hold on
    ylim([0 25])
    xlim([550 1020])
    hold off

%SAMPLE B4
figure(3)
set(gcf, 'color', 'w')
plot(B4(1,:), B4(2,:), 'black')
hold on
plot(B4(3,:), B4(4,:), 'blue')
hold on
    lgd = legend('45° AOI', '63° AOI', 'location', 'southeast');
    set(lgd, 'fontsize', 20)
    hold on
    title('B4')
    hold on
    xlabel('Wavelength (nm)')
    ylabel('Reflectance (%)')
    hold on
    ylim([0 45])
    xlim([550 1020])
    hold off

%SAMPLE F
figure(4)
set(gcf, 'color', 'w')
plot(F(1,:), F(2,:), 'black')
hold on
plot(F(3,:), F(4,:), 'blue')
hold on
    lgd = legend('45° AOI', '63° AOI', 'location', 'southeast');
    set(lgd, 'fontsize', 20)
    hold on
    title('F')
    hold on
    xlabel('Wavelength (nm)')
    ylabel('Reflectance (%)')
    hold on
    ylim([0 35])
    xlim([550 1020])
    hold off

%SAMPLE SI
figure(5)
set(gcf, 'color', 'w')
plot(Si(1,:), Si(2,:), 'black')
hold on
plot(Si(3,:), Si(4,:), 'blue')
hold on
    lgd = legend('45° AOI', '63° AOI', 'location', 'southeast');
    set(lgd, 'fontsize', 20)
    hold on
    title('Si')
    hold on
    xlabel('Wavelength (nm)')
    ylabel('Reflectance (%)')
    hold on
    ylim([0 60])
    xlim([550 1020])
    hold off
%%