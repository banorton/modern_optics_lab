clc;clear;clf;

%% LOADING DATA
Files = dir('C:\Users\brandon\src\modernoptics\labG\fdata');
for i=3:length(Files)
    load(fullfile('..','labG','fdata',Files(i).name));
end


%% ANALYZING DATA

%SINGLE SLIT DATA
%S20G
tempStartX = 6.5;
tempEndX = 10;
tempMinY = 0;
tempMaxY = 10;
s20g1w = widthFind(s20g1, tempStartX, tempEndX, tempMinY, tempMaxY);
s20g2w = widthFind(s20g2, tempStartX, tempEndX, tempMinY, tempMaxY);
s20g3w = widthFind(s20g3, tempStartX, tempEndX, tempMinY, tempMaxY);
s20gw = (s20g1w+s20g2w+s20g3w)/3

%% PLOTTING DATA

%SINGLE SLIT DATA
%S20
f1 = figure(1);
subplot(1,2,1)
hold on
plot(s20g1(:,1),s20g1(:,2),'black')
plot(s20g2(:,1),s20g2(:,2),'b')
plot(s20g3(:,1),s20g3(:,2),'c')
    legend('Run 1','Run 2','Run 3')
    title('Single Slit a=20\mum green laser')
    xlim([min(s20g1(:,1)) max(s20g1(:,1))])
    xlabel('Distance (mm)')
    ylabel('Transmission (%)')
    grid on
hold off
subplot(1,2,2)
hold on
plot(s20r1(:,1),s20r1(:,2),'black')
plot(s20r2(:,1),s20r2(:,2),'b')
plot(s20r3(:,1),s20r3(:,2),'c')
    legend('Run 1','Run 2','Run 3')
    title('Single Slit a=20\mum red laser')
    xlim([min(s20r1(:,1)) max(s20r1(:,1))])
    xlabel('Distance (mm)')
    ylabel('Transmission (%)')
grid on
hold off
