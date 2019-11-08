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

X4m_obj10_side1_start = 33.29;
X4m_obj25_side1_start = 3.86;
X4m_obj10_side2_start = 9.14;
X4m_obj25_side2_start = 0.94;
X2m_obj25_side1_start = 5.93;
X2m_obj25_side2_start = 7.69;

X4mo10s1dist = ( X4m_obj10_side1_start : (2*halfrot) : X4m_obj10_side1_start+(2*halfrot*(numel(X4m_obj10_side1))-1) );
X4mo25s1dist = ( X4m_obj25_side1_start : (halfrot) : X4m_obj25_side1_start+(halfrot*(numel(X4m_obj25_side1))-1) )';
X4mo10s2dist = ( X4m_obj10_side2_start : (halfrot) : X4m_obj10_side2_start+(halfrot*(numel(X4m_obj10_side2))-1) )';
X4mo25s2dist = ( X4m_obj25_side2_start : (halfrot) : X4m_obj25_side2_start+(halfrot*(numel(X4m_obj25_side2))-1) )';
X2mo25s1dist = ( X2m_obj25_side1_start : (halfrot) : X2m_obj25_side1_start+(halfrot*(numel(X2m_obj25_side1))-1) )';
X2mo25s2dist = ( X2m_obj25_side2_start : (halfrot) : X2m_obj25_side2_start+(halfrot*(numel(X2m_obj25_side2))-1) )';

%% PLOTTING DATA

%2m CABLE NA
figure(1)
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
    xlabel('Angle (�)')
    ylabel('Power (\muW)')
hold off
%4m CABLE NA
figure(2)
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
    xlabel('Angle (�)')
    ylabel('Power (\muW)')
hold off

%2m CABLE COUPLING EFFICIENCY
figure(3)
plot(X4mo10s1dist,X4mo10s1,'b-')
hold on
    legend('Side 1','Side2')
    title('4m Cable')
    xlabel('Angle (�)')
    ylabel('Power (\muW)')
hold off





