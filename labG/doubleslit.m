clc;clear;clf;

%% LOADING DATA
Files = dir('C:\Users\brandon\src\modernoptics\labG\ddata');
for i=3:length(Files)
    load(fullfile('..','labG','ddata',Files(i).name));
end

g14025 = X0_04_0_25_green_run1;
g24025 = X0_04_0_25_green_run2;
g34025 = X0_04_0_25_green_run3;
r14025 = X0_04_0_25_red_run1;
r24025 = X0_04_0_25_red_run2;
r34025 = X0_04_0_25_red_run3;

g14050 = X0_04_0_5_green_run1;
g24050 = X0_04_0_5_green_run2;
g34050 = X0_04_0_5_green_run3;
r14050 = X0_04_0_5_red_run1;
r24050 = X0_04_0_5_red_run2;
r34050 = X0_04_0_5_red_run3;

g18025 = X0_08_0_25_green_run1;
g28025 = X0_08_0_25_green_run2;
g38025 = X0_08_0_25_green_run3;
r18025 = X0_08_0_25_red_run1;
r28025 = X0_08_0_25_red_run2;
r38025 = X0_08_0_25_red_run3;

g18050 = X0_08_0_5_green_run1;
g28050 = X0_08_0_5_green_run2;
g38050 = X0_08_0_5_green_run3;
r18050 = X0_08_0_5_red_run1;
r28050 = X0_08_0_5_red_run2;
r38050 = X0_08_0_5_red_run3;

%% ANALYZING DATA

