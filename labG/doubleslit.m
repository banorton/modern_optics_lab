clc;clear;clf;

%% LOADING DATA
Files = dir('C:\Users\brandon\src\modernoptics\labG\ddata');
for i=3:length(Files)
    load(fullfile('..','labG','ddata',Files(i).name));
end

g4025 = [abs(X0_04_0_25_green_run1(:,1)*(100)),X0_04_0_25_green_run1(:,2)];
r4025 = [abs(X0_04_0_25_red_run1(:,1)*(100)),X0_04_0_25_red_run1(:,2)];
g4050 = [abs(X0_04_0_5_green_run1(:,1)*(100)),X0_04_0_5_green_run1(:,2)];
r4050 = [abs(X0_04_0_5_red_run1(:,1)*(100)),X0_04_0_5_red_run1(:,2)];
g8025 = [abs(X0_08_0_25_green_run1(:,1)*(100)),X0_08_0_25_green_run1(:,2)];
r8025 = [abs(X0_08_0_25_red_run1(:,1)*(100)),X0_08_0_25_red_run1(:,2)];
g8050 = [abs(X0_08_0_5_green_run1(:,1)*(100)),X0_08_0_5_green_run1(:,2)];
r8050 = [abs(X0_08_0_5_red_run1(:,1)*(100)),X0_08_0_5_red_run1(:,2)];

x = -4:4;
x2 = -2:2;

%% ANALYZING DATA

%4025
f1 = figure(1);
subplot(1,2,1)
hold on
plot(g4025(:,1),g4025(:,2), 'black');
    title('4025 Green Laser')
    xlim([6 11])
    ylim([0 15])
    ylabel('Transmission (arb. unit)')
    xlabel('Distance (mm)')
hold off
yg4025 = [7.7,7.9,8.1,8.3,8.5,8.6,8.8,9,9.2];
subplot(1,2,2)
hold on
plot(r4025(:,1),r4025(:,2), 'black');
    title('4025 Red Laser')
    xlim([6 11])
    ylim([0 15])
    ylabel('Transmission (arb. unit)')
    xlabel('Distance (mm)')
hold off
yr4025 = [7.9,8.1,8.3,8.6,8.8,9,9.2,9.4,9.7];

%4050
f2 = figure(2);
subplot(1,2,1)
hold on
plot(g4050(:,1),g4050(:,2), 'black');
    title('4050 Green Laser')
    xlim([7.5 12])
    ylim([0 12])
    ylabel('Transmission (arb. unit)')
    xlabel('Distance (mm)')
hold off
yg4050 = [9.2,9.3,9.4,9.5,9.7,9.8,9.9,10];
subplot(1,2,2)
hold on
plot(r4050(:,1),r4050(:,2), 'black');
    title('4050 Red Laser')
    xlim([8.5 10])
    ylim([0 15])
    ylabel('Transmission (arb. unit)')
    xlabel('Distance (mm)')
hold off
yr4050 = [8.9,9.1,9.2,9.3,9.4,9.5,9.6,9.8,9.9];

%8025
f3 = figure(3);
subplot(1,2,1)
hold on
plot(g8025(:,1),g8025(:,2), 'black');
    title('8025 Green Laser')
    xlim([7.75 8.6])
    ylim([0 100])
    ylabel('Transmission (arb. unit)')
    xlabel('Distance (mm)')
hold off
yg8025 = [7.8,8,8.2,8.3,8.5];
subplot(1,2,2)
hold on
plot(r8025(:,1),r8025(:,2), 'black');
    title('8025 Red Laser')
    xlim([8.75 10])
    ylim([0 100])
    ylabel('Transmission (arb. unit)')
    xlabel('Distance (mm)')
hold off
yr8025 = [8.9,9.1,9.3,9.6,9.8];

%8050
f4 = figure(4);
subplot(1,2,1)
hold on
plot(g8050(:,1),g8050(:,2), 'black');
    title('8050 Green Laser')
    xlim([9.25 10.5])
    ylim([0 100])
    ylabel('Transmission (arb. unit)')
    xlabel('Distance (mm)')
hold off
yg8050 = [9.6,9.7,9.8,9.9,10,10.1,10.2,10.3,10.4];
subplot(1,2,2)
hold on
plot(r8050(:,1),r8050(:,2), 'black');
    title('8050 Red Laser')
    xlim([8.25 9.5])
    ylim([0 60])
    ylabel('Transmission (arb. unit)')
    xlabel('Distance (mm)')
hold off
yr8050 = [8.4,8.5,8.6,8.7,8.8,8.9,9,9.1,9.2];

%FINAL
f5 = figure(5);
plot(x,yg4025)

f6 = figure(6);
plot(x,yg4025)

f7 = figure(7);
plot(x,yg4025)

f8 = figure(8);
plot(x,yg4025)

f9 = figure(9);
plot(x,yg4025)

f10 = figure(10);
plot(x,yg4025)

f11 = figure(11);
plot(x,yg4025)

f12 = figure(12);
plot(x,yg4025)
plot(x)
