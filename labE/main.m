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

min = 450;
max = 1000;
%% DATA ANALYSIS
B20(2,:) = B20(2,:)./Si(2,:);
B20(4,:) = B20(4,:)./Si(4,:);
B20 = [(B20(1,:).*(B20(1,:)>=min));(B20(2,:).*(B20(1,:)>=min));(B20(3,:).*(B20(1,:)>=min));(B20(4,:).*(B20(1,:)>=min))];
B20 = [(B20(1,:).*(B20(1,:)<=max));(B20(2,:).*(B20(1,:)<=max));(B20(3,:).*(B20(1,:)<=max));(B20(4,:).*(B20(1,:)<=max))];
B20 = [B20(1,(B20(1,:)~=0));B20(2,(B20(1,:)~=0));B20(3,(B20(1,:)~=0));B20(4,(B20(1,:)~=0))];
% B20_5_max = B20(1,:).*(B20(2,:)==max(B20(2,:)));
% B20_5_max = B20_5_max(B20_5_max~=0);
% B20_10_max = B20(1,:).*(B20(4,:)==max(B20(4,:)));
% B20_10_max = B20_10_max(B20_10_max~=0);

B3(2,:) = B3(2,:)./Si(2,:);
B3(4,:) = B3(4,:)./Si(4,:);
B3 = [(B3(1,:).*(B3(1,:)>=min));(B3(2,:).*(B3(1,:)>=min));(B3(3,:).*(B3(1,:)>=min));(B3(4,:).*(B3(1,:)>=min))];
B3 = [(B3(1,:).*(B3(1,:)<=max));(B3(2,:).*(B3(1,:)<=max));(B3(3,:).*(B3(1,:)<=max));(B3(4,:).*(B3(1,:)<=max))];
B3 = [B3(1,(B3(1,:)~=0));B3(2,(B3(1,:)~=0));B3(3,(B3(1,:)~=0));B3(4,(B3(1,:)~=0))];
% B3_5_max = B3(1,:).*(B3(2,:)==max(B3(2,:)));
% B3_5_max = B3_5_max(B3_5_max~=0);
% B3_10_max = B3(1,:).*(B3(4,:)==max(B3(4,:)));
% B3_10_max = B3_10_max(B3_10_max~=0);

B4(2,:) = B4(2,:)./Si(2,:);
B4(4,:) = B4(4,:)./Si(4,:);
B4 = [(B4(1,:).*(B4(1,:)>=min));(B4(2,:).*(B4(1,:)>=min));(B4(3,:).*(B4(1,:)>=min));(B4(4,:).*(B4(1,:)>=min))];
B4 = [(B4(1,:).*(B4(1,:)<=max));(B4(2,:).*(B4(1,:)<=max));(B4(3,:).*(B4(1,:)<=max));(B4(4,:).*(B4(1,:)<=max))];
B4 = [B4(1,(B4(1,:)~=0));B4(2,(B4(1,:)~=0));B4(3,(B4(1,:)~=0));B4(4,(B4(1,:)~=0))];
% B4_5_min = B4(1,:).*(B4(2,:)==min(B4(2,:)));
% B4_5_min = B4_5_min(B4_5_min~=0);
% B4_10_min = B4(1,:).*(B4(4,:)==min(B4(4,:)));
% B4_10_min = B4_10_min(B4_10_min~=0);

F(2,:) = F(2,:)./Si(2,:);
F(4,:) = F(4,:)./Si(4,:);
F = [(F(1,:).*(F(1,:)>=min));(F(2,:).*(F(1,:)>=min));(F(3,:).*(F(1,:)>=min));(F(4,:).*(F(1,:)>=min))];
F = [(F(1,:).*(F(1,:)<=max));(F(2,:).*(F(1,:)<=max));(F(3,:).*(F(1,:)<=max));(F(4,:).*(F(1,:)<=max))];
F = [F(1,(F(1,:)~=0));F(2,(F(1,:)~=0));F(3,(F(1,:)~=0));F(4,(F(1,:)~=0))];
% F_5_min = F(1,:).*(F(2,:)==min(F(2,:)));
% F_5_min = F_5_min(F_5_min~=0);
% F_10_min = F(1,:).*(F(4,:)==min(F(4,:)));
% F_10_min = F_10_min(F_10_min~=0);

%% FIGURES
xLimMax = max;
xLimMin = min;
yLimMax = 1.2;

%SAMPLE B20
clf;
figure(1)
set(gcf, 'color', 'w')
plot(B20(1,:), B20(2,:), 'black')
hold on
% plot(B20(3,:), B20(4,:), 'cyan')
% hold on
    lgd = legend('5� AOI', '10� AOI', 'location', 'southeast');
    set(lgd, 'fontsize', 20)
    hold on
    title('B20')
    hold on
    xlabel('Wavelength (nm)')
    ylabel('Transmittance (%)')
    hold on
%     h1 = plot([B20_5_max B20_5_max],[0 100], 'r--');
%     h2 = plot([B20_10_max B20_10_max],[0 100], 'r--');
%     set(get(get(h1,'Annotation'),'LegendInformation'),'IconDisplayStyle','off');
%     set(get(get(h2,'Annotation'),'LegendInformation'),'IconDisplayStyle','off');
%     hold on
%     text(B20_10_max+(B20_10_max/50), 1.5, sprintf('\\Delta\\lambda = %.1fnm',abs(B20_10_max-B20_5_max)))
    hold on
    ylim([0 yLimMax])
    xlim([xLimMin xLimMax])
    hold off

%SAMPLE B3
figure(2)
set(gcf, 'color', 'w')
plot(B3(1,:), B3(2,:), 'black')
hold on
% plot(B3(3,:), B3(4,:), 'cyan')
% hold on
    lgd = legend('5� AOI', '10� AOI', 'location', 'southeast');
    set(lgd, 'fontsize', 20)
    hold on
    title('B3')
    hold on
    xlabel('Wavelength (nm)')
    ylabel('Transmittance (%)')
    hold on
%     h1 = plot([B3_5_max B3_5_max],[0 100], 'r--');
%     h2 = plot([B3_10_max B3_10_max],[0 100], 'r--');
%     set(get(get(h1,'Annotation'),'LegendInformation'),'IconDisplayStyle','off');
%     set(get(get(h2,'Annotation'),'LegendInformation'),'IconDisplayStyle','off');
%     hold on
%     text(B3_5_max+(B3_5_max/50), 1.5, sprintf('\\Delta\\lambda = %.1fnm',abs(B3_10_max-B3_5_max)))
%     hold on
    ylim([0 yLimMax])
    xlim([xLimMin xLimMax])
    hold off

%SAMPLE B4
figure(3)
set(gcf, 'color', 'w')
plot(B4(1,:), B4(2,:), 'black')
hold on
% plot(B4(3,:), B4(4,:), 'cyan')
% hold on
    lgd = legend('5� AOI', '10� AOI', 'location', 'southeast');
    set(lgd, 'fontsize', 20)
    hold on
    title('B4')
    hold on
    xlabel('Wavelength (nm)')
    ylabel('Transmittance (%)')
    hold on
%     h1 = plot([B4_5_min B4_5_min],[0 100], 'r--');
%     h2 = plot([B4_10_min B4_10_min],[0 100], 'r--');
%     set(get(get(h1,'Annotation'),'LegendInformation'),'IconDisplayStyle','off');
%     set(get(get(h2,'Annotation'),'LegendInformation'),'IconDisplayStyle','off');
%     hold on
%     text(B4_5_min+(B4_5_min/50), 1.5, sprintf('\\Delta\\lambda = %.1fnm',abs(B4_10_min-B4_5_min)))
%     hold on
    ylim([0 yLimMax])
    xlim([xLimMin xLimMax])
    hold off

%SAMPLE F
figure(4)
set(gcf, 'color', 'w')
plot(F(1,:), F(2,:), 'black')
hold on
% plot(F(3,:), F(4,:), 'cyan')
% hold on
    lgd = legend('5� AOI', '10� AOI', 'location', 'southeast');
    set(lgd, 'fontsize', 20)
    hold on
    title('F')
    hold on
    xlabel('Wavelength (nm)')
    ylabel('Transmittance (%)')
    hold on
%     h1 = plot([F_5_min F_5_min],[0 100], 'r--');
%     h2 = plot([F_10_min F_10_min],[0 100], 'r--');
%     set(get(get(h1,'Annotation'),'LegendInformation'),'IconDisplayStyle','off');
%     set(get(get(h2,'Annotation'),'LegendInformation'),'IconDisplayStyle','off');
%     hold on
%     text(F_5_min+(F_5_min/50), 1.5, sprintf('\\Delta\\lambda = %.1fnm',abs(F_10_min-F_5_min)))
%     hold on
    ylim([.001 yLimMax])
    xlim([xLimMin xLimMax])
    hold off

%SAMPLE SI
figure(5)
set(gcf, 'color', 'w')
plot(Si(1,:), Si(2,:), 'black')
hold on
plot(Si(3,:), Si(4,:), 'cyan')
hold on
    lgd = legend('5� AOI', '10� AOI', 'location', 'southeast');
    set(lgd, 'fontsize', 20)
    hold on
    title('Silicon Substrate')
    hold on
    xlabel('Wavelength (nm)')
    ylabel('Transmittance (%)')
    hold on
    ylim([0 80])
    xlim([xLimMin xLimMax])
    hold off
%%