clc;clear;clf;

%% LOADING DATA
Files = dir('C:\Users\brandon\src\modernoptics\labG\fdata');
for i=3:length(Files)
    load(fullfile('..','labG','fdata',Files(i).name));
end

s1g = [slit1gposition(:,2), slit1g(:,2)];
s1r = [slit1rposition(:,2), slit1r(:,2)];
s2g = [slit2gposition(:,2), slit2g(:,2)];
s2r = [slit2rposition(:,2), slit2r(:,2)];

while i<500

    s1g(:,1) = smooth(s1g(:,1));
    s1g(:,2) = smooth(s1g(:,2));
    s1r(:,1) = smooth(s1r(:,1));
    s1r(:,2) = smooth(s1r(:,2));
    s2g(:,1) = smooth(s2g(:,1));
    s2g(:,2) = smooth(s2g(:,2));
    s2r(:,1) = smooth(s2r(:,1));
    s2r(:,2) = smooth(s2r(:,2));

i = i+1;
end

%%

slit1gw = abs(7.8-8.1);
slit1rw = abs(8.5-8.8);
slit2gw = abs(8.1-7.8);
slit2rw = abs(8.7-8.4);

%% PLOTTING DATA

%SINGLE SLIT DATA
%S20
f1 = figure(1);
hold on
subplot(1,2,1)
plot(abs(s1g(:,1)*100),s1g(:,2),'black')
    xlim([7 9])
    xlabel('Distance (cm)')
    ylabel('Transmission (%)')
    grid on
hold off
subplot(1,2,2)
hold on
plot(abs(s1r(:,1)*100),s1r(:,2),'black')
    xlim([7.5 9.6])
    xlabel('Distance (cm)')
    ylabel('Transmission (%)')
    grid on
hold off

f2 = figure(2);
subplot(1,2,1)
hold on
plot(abs(s2g(:,1)*100),s2g(:,2),'black')
    xlim([7 9])
    xlabel('Distance (cm)')
    ylabel('Transmission (%)')
    grid on
hold off
subplot(1,2,2)
hold on
plot(abs(s2r(:,1)*100),s2r(:,2),'black')
    xlim([7.5 9.6])
    xlabel('Distance (cm)')
    ylabel('Transmission (%)')
    grid on
hold off

a1 = 45;
a2 = 42;

f1.Color = 'WHITE';
f2.Color = 'WHITE';