clc;clear;clf;
%% LOADING DATA
load angle.txt

load 2m_angle1_side1.txt
load 2m_angle1_side2.txt
load 2m_angle2_side1.txt
load 2m_angle2_side2.txt
load 2m_angle3_side1.txt
load 2m_angle3_side2.txt
load 2m_obj25_side1.txt
load 2m_obj25_side2.txt
X2mas1 = [X2m_angle1_side1,X2m_angle2_side1,X2m_angle3_side1];
X2mas2 = [X2m_angle1_side2,X2m_angle2_side2,X2m_angle3_side2];
X2ma1 = sortrows([angle, mean(X2mas1')'],1);
X2ma2 = sortrows([angle, mean(X2mas2')'],1);
X2mo25s1 = X2m_obj25_side1;
X2mo25s2 = X2m_obj25_side2;

load 4m_angle1_side1.txt
load 4m_angle1_side2.txt
load 4m_angle2_side1.txt
load 4m_angle2_side2.txt
load 4m_obj25_side1.txt
load 4m_obj25_side2.txt
load 4m_obj10_side1.txt
load 4m_obj10_side2.txt
X4mas1 = [X4m_angle1_side1,X4m_angle2_side1];
X4mas2 = [X4m_angle1_side2,X4m_angle2_side2];
X4ma1 = sortrows([angle, mean(X4mas1')'],1);
X4ma2 = sortrows([angle, mean(X4mas2')'],1);
X4mo10s1 = X4m_obj10_side1;
X4mo10s2 = X4m_obj10_side2;
X4mo25s1 = X4m_obj25_side1;
X4mo25s2 = X4m_obj25_side2;

%% DECLARING CONSTANTS
halfrot = .5; %millimeters

X4mo10s1start = 33.29;
X4mo25s1start = 3.86;
X4mo10s2start = 9.14;
X4mo25s2start = 0.94;
X2mo25s1start = 5.93;
X2mo25s2start = 7.69;

X4mo10s1dist = ( X4mo10s1start : (2*halfrot) : X4mo10s1start+(2*halfrot*(numel(X4m_obj10_side1)-1)) )';
X4mo25s1dist = ( X4mo25s1start : (halfrot) : X4mo25s1start+(halfrot*(numel(X4m_obj25_side1)-1)) )';
X4mo10s2dist = ( X4mo10s2start : (halfrot) : X4mo10s2start+(halfrot*(numel(X4m_obj10_side2)-1)) )';
X4mo25s2dist = ( X4mo25s2start : (halfrot) : X4mo25s2start+(halfrot*(numel(X4m_obj25_side2)-1)) )';
X2mo25s1dist = ( X2mo25s1start : (halfrot) : X2mo25s1start+(halfrot*(numel(X2m_obj25_side1)-1)) )';
X2mo25s2dist = ( X2mo25s2start : (halfrot) : X2mo25s2start+(halfrot*(numel(X2m_obj25_side2)-1)) )';

%% PLOTTING DATA

%2m CABLE NA
figure(1)
set(gcf, 'color', 'w')
plot(sin(X2ma1(:,1).*(pi/180)),X2ma1(:,2),'b-')
hold on
plot(sin(X2ma1(:,1).*(pi/180)),X2ma1(:,2),'bo','handlevisibility','off')
hold on
plot(sin(X2ma2(:,1).*(pi/180)),X2ma2(:,2),'black-')
hold on
plot(sin(X2ma2(:,1).*(pi/180)),X2ma2(:,2),'blacko','handlevisibility','off')
hold on
    legend('Side 1','Side2')
    title('2m Cable')
    xlabel('sin(Angle)')
    ylabel('Power (\muW)')
hold off
%4m CABLE NA
figure(2)
set(gcf, 'color', 'w')
plot(sin(X4ma1(:,1).*(pi/180)),X4ma1(:,2),'b-')
hold on
plot(sin(X4ma1(:,1).*(pi/180)),X4ma1(:,2),'bo','handlevisibility','off')
hold on
plot(sin(X4ma2(:,1).*(pi/180)),X4ma2(:,2),'black-')
hold on
plot(sin(X4ma2(:,1).*(pi/180)),X4ma2(:,2),'blacko','handlevisibility','off')
hold on
    legend('Side 1','Side2')
    title('4m Cable')
    xlabel('sin(Angle)')
    ylabel('Power (\muW)')
hold off

%2m CABLE COUPLING EFFICIENCY
figure(3)
set(gcf, 'color', 'w')
suptitle('2m Cable CE')
subplot(1,2,1)
plot(X2mo25s1dist,X2mo25s1,'blacko','handlevisibility','off')
hold on
plot(X2mo25s1dist,X2mo25s1,'black-')
hold on
    title('Side 1 10x')
    xlabel('Distance (mm)')
    ylabel('Power (\muW)')
hold off
subplot(1,2,2)
plot(X2mo25s2dist,X2mo25s2,'blacko','handlevisibility','off')
hold on
plot(X2mo25s2dist,X2mo25s2,'black-')
hold on
    title('Side 2 10x')
    xlabel('Distance (mm)')
    ylabel('Power (\muW)')
hold off

%4m CABLE COUPLING EFFICIENCY
figure(4)
set(gcf, 'color', 'w')
suptitle('4m Cable CE')
subplot(2,2,1)
plot(X4mo10s1dist,X4mo10s1,'blacko','handlevisibility','off')
hold on
plot(X4mo10s1dist,X4mo10s1,'black-')
hold on
    title('Side 1 10x')
    xlabel('Distance (mm)')
    ylabel('Power (\muW)')
hold off
subplot(2,2,2)
plot(X4mo10s2dist,X4mo10s2,'blacko','handlevisibility','off')
hold on
plot(X4mo10s2dist,X4mo10s2,'black-')
hold on
    title('Side 2 10x')
    xlabel('Distance (mm)')
    ylabel('Power (\muW)')
hold off
subplot(2,2,3)
plot(X4mo25s1dist,X4mo25s1,'blacko','handlevisibility','off')
hold on
plot(X4mo25s1dist,X4mo25s1,'black-')
hold on
    title('Side 1 25x')
    xlabel('Distance (mm)')
    ylabel('Power (\muW)')
hold off
subplot(2,2,4)
plot(X4mo25s2dist,X4mo25s2,'blacko','handlevisibility','off')
hold on
plot(X4mo25s2dist,X4mo25s2,'black-')
hold on
    title('Side 2 25x')
    xlabel('Distance (mm)')
    ylabel('Power (\muW)')
hold off




