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

load 4m_angle1_side1.txt
load 4m_angle1_side2.txt
load 4m_angle2_side1.txt
load 4m_angle2_side2.txt
load 4m_obj25_side1.txt
load 4m_obj25_side2.txt
load 4m_obj10_side1.txt
load 4m_obj10_side2.txt

%% DECLARING CONSTANTS
halfrot = .5; %millimeters

X4m_obj10_side1_start = 33.29;
X4m_obj25_side1_start = 3.86;
X4m_obj10_side2_start = 9.14;
X4m_obj25_side2_start = 0.94;
X2m_obj25_side1_start = 5.93;
X2m_obj25_side2_start = 7.69;

X4m_obj10_side1_dist = ( X4m_obj10_side1_start : (2*halfrot) : X4m_obj10_side1_start+(2*halfrot*numel(X4m_obj10_side1)) );
X4m_obj25_side1_dist = ( X4m_obj25_side1_start : (halfrot) : X4m_obj25_side1_start+(halfrot*numel(X4m_obj25_side1)) );
X4m_obj10_side2_dist = ( X4m_obj10_side2_start : (halfrot) : X4m_obj10_side2_start+(halfrot*numel(X4m_obj10_side2)) );
X4m_obj25_side2_dist = ( X4m_obj25_side2_start : (halfrot) : X4m_obj25_side2_start+(halfrot*numel(X4m_obj25_side2)) );
X2m_obj25_side1_dist = ( X2m_obj25_side1_start : (halfrot) : X2m_obj25_side1_start+(halfrot*numel(X2m_obj25_side1)) );
X2m_obj25_side2_dist = ( X2m_obj25_side2_start : (halfrot) : X2m_obj25_side2_start+(halfrot*numel(X2m_obj25_side2)) );

%% PLOTTING DATA

