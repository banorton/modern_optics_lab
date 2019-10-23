clear;clc;clf;
%% LOADING DATA
load b20_10.txt
load b20_5.txt
load b3_10.txt
load b3_5.txt
load b4_10.txt
load b4_5.txt
load f_10.txt
load f_5.txt
load si_10.txt
load si_5.txt

B20 = [b20_5,b20_10]';
B3 = [b3_5,b3_10]';
B4 = [b4_5,b4_10]';
F = [f_5,f_10]';
Si = [si_5,si_10]';

%% DATA ANALYSIS
B20(2,:) = B20(2,:)./Si(2,:);
B20(4,:) = B20(4,:)./Si(4,:);
B20 = [(B20(1,:).*(B20(1,:)>=550));(B20(2,:).*(B20(1,:)>=550));(B20(3,:).*(B20(1,:)>=550));(B20(4,:).*(B20(1,:)>=550))];
B20 = [(B20(1,:).*(B20(1,:)<=1000));(B20(2,:).*(B20(1,:)<=1000));(B20(3,:).*(B20(1,:)<=1000));(B20(4,:).*(B20(1,:)<=1000))];
B20 = [B20(1,(B20(1,:)~=0));B20(2,(B20(1,:)~=0));B20(3,(B20(1,:)~=0));B20(4,(B20(1,:)~=0))];
B20_5_min = min(B20(2,:));
B20_10_min = min(B20(4,:));

B3(2,:) = B3(2,:)./Si(2,:);
B3(4,:) = B3(4,:)./Si(4,:);
B3 = [(B3(1,:).*(B3(1,:)>=550));(B3(2,:).*(B3(1,:)>=550));(B3(3,:).*(B3(1,:)>=550));(B3(4,:).*(B3(1,:)>=550))];
B3 = [(B3(1,:).*(B3(1,:)<=1000));(B3(2,:).*(B3(1,:)<=1000));(B3(3,:).*(B3(1,:)<=1000));(B3(4,:).*(B3(1,:)<=1000))];
B3 = [B3(1,(B3(1,:)~=0));B3(2,(B3(1,:)~=0));B3(3,(B3(1,:)~=0));B3(4,(B3(1,:)~=0))];
B3_5_min = min(B3(2,:));
B3_10_min = min(B3(4,:));

B4(2,:) = B4(2,:)./Si(2,:);
B4(4,:) = B4(4,:)./Si(4,:);
B4 = [(B4(1,:).*(B4(1,:)>=550));(B4(2,:).*(B4(1,:)>=550));(B4(3,:).*(B4(1,:)>=550));(B4(4,:).*(B4(1,:)>=550))];
B4 = [(B4(1,:).*(B4(1,:)<=1000));(B4(2,:).*(B4(1,:)<=1000));(B4(3,:).*(B4(1,:)<=1000));(B4(4,:).*(B4(1,:)<=1000))];
B4 = [B4(1,(B4(1,:)~=0));B4(2,(B4(1,:)~=0));B4(3,(B4(1,:)~=0));B4(4,(B4(1,:)~=0))];
B4_5_min = min(B4(2,:));
B4_10_min = min(B4(4,:));

F(2,:) = F(2,:)./Si(2,:);
F(4,:) = F(4,:)./Si(4,:);
F = [(F(1,:).*(F(1,:)>=550));(F(2,:).*(F(1,:)>=550));(F(3,:).*(F(1,:)>=550));(F(4,:).*(F(1,:)>=550))];
F = [(F(1,:).*(F(1,:)<=1000));(F(2,:).*(F(1,:)<=1000));(F(3,:).*(F(1,:)<=1000));(F(4,:).*(F(1,:)<=1000))];
F = [F(1,(F(1,:)~=0));F(2,(F(1,:)~=0));F(3,(F(1,:)~=0));F(4,(F(1,:)~=0))];
F_5_min = min(F(2,:));
F_10_min = min(F(4,:));

%% FIGURES
xLimMax = 1000;
xLimMin = 550;
yLimMax = 1.7;

%SAMPLE B20
figure(1)
set(gcf, 'color', 'w')
plot(B20(1,:), B20(2,:), 'black')
hold on
plot(B20(3,:), B20(4,:), 'cyan')
hold on
    lgd = legend('5� AOI', '10� AOI', 'location', 'northwest');
    set(lgd, 'fontsize', 20)
    hold on
    title('B20')
    hold on
    xlabel('Wavelength (nm)')
    ylabel('Reflectance (%)')
    hold on
    line([B4_10_min],[],'r--')
    hold on
    ylim([0 yLimMax])
    xlim([xLimMin xLimMax])
    hold off

%SAMPLE B3
figure(2)
set(gcf, 'color', 'w')
plot(B3(1,:), B3(2,:), 'black')
hold on
plot(B3(3,:), B3(4,:), 'cyan')
hold on
    lgd = legend('5� AOI', '10� AOI', 'location', 'northwest');
    set(lgd, 'fontsize', 20)
    hold on
    title('B3')
    hold on
    xlabel('Wavelength (nm)')
    ylabel('Reflectance (%)')
    hold on
    ylim([0 yLimMax])
    xlim([xLimMin xLimMax])
    hold off

%SAMPLE B4
figure(3)
set(gcf, 'color', 'w')
semilogy(B4(1,:), B4(2,:), 'black')
hold on
semilogy(B4(3,:), B4(4,:), 'cyan')
hold on
    lgd = legend('5� AOI', '10� AOI', 'location', 'northwest');
    set(lgd, 'fontsize', 20)
    hold on
    title('B4')
    hold on
    xlabel('Wavelength (nm)')
    ylabel('Reflectance (%)')
    hold on
    ylim([0 yLimMax])
    xlim([xLimMin xLimMax])
    hold off

%SAMPLE F
figure(4)
set(gcf, 'color', 'w')
semilogy(F(1,:), F(2,:), 'black')
hold on
semilogy(F(3,:), F(4,:), 'cyan')
hold on
    lgd = legend('5� AOI', '10� AOI', 'location', 'northwest');
    set(lgd, 'fontsize', 20)
    hold on
    title('F')
    hold on
    xlabel('Wavelength (nm)')
    ylabel('Reflectance (%)')
    hold on
    ylim([0 yLimMax])
    xlim([xLimMin xLimMax])
    hold off

%SAMPLE SI
figure(5)
set(gcf, 'color', 'w')
plot(Si(1,:), Si(2,:), 'black')
hold on
plot(Si(3,:), Si(4,:), 'cyan')
hold on
    lgd = legend('5� AOI', '10� AOI', 'location', 'northwest');
    set(lgd, 'fontsize', 20)
    hold on
    title('Si')
    hold on
    xlabel('Wavelength (nm)')
    ylabel('Reflectance (%)')
    hold on
    ylim([0 80])
    xlim([xLimMin xLimMax])
    hold off
%%