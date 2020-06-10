clc;clear;clf;

%% LOADING DATA
Files = dir('C:\Users\brandon\src\modernoptics\labG\sdata');
for i=3:length(Files)
    load(fullfile('..','labG','sdata',Files(i).name));
end
s20g1 = [abs(single20microgreen1(:,1)).*100,single20microgreen1(:,2)];
s20g2 = [abs(single20microgreen2(:,1)).*100,single20microgreen2(:,2)];
s20g3 = [abs(single20microgreen3(:,1)).*100,single20microgreen3(:,2)];
s20r1 = [abs(single20microred1(:,1)).*100,single20microred1(:,2)];
s20r2 = [abs(single20microred2(:,1)).*100,single20microred2(:,2)];
s20r3 = [abs(single20microred3(:,1)).*100,single20microred3(:,2)];
s40g1 = [abs(single40microgreen1(:,1)).*100,single40microgreen1(:,2)];
s40g2 = [abs(single40microgreen2(:,1)).*100,single40microgreen2(:,2)];
s40g3 = [abs(single40microgreen3(:,1)).*100,single40microgreen3(:,2)];
s40r1 = [abs(single40microred1(:,1)).*100,single40microred1(:,2)];
s40r2 = [abs(single40microred2(:,1)).*100,single40microred2(:,2)];
s40r3 = [abs(single40microred3(:,1)).*100,single40microred3(:,2)];
s80g1 = [abs(single80microgreen1(:,1)).*100,single80microgreen1(:,2)];
s80g2 = [abs(single80microgreen2(:,1)).*100,single80microgreen2(:,2)];
s80g3 = [abs(single80microgreen3(:,1)).*100,single80microgreen3(:,2)];
s80r1 = [abs(single80microred1(:,1)).*100,single80microred1(:,2)];
s80r2 = [abs(single80microred2(:,1)).*100,single80microred2(:,2)];
s80r3 = [abs(single80microred3(:,1)).*100,single80microred3(:,2)];
s160g1 = [abs(single160microgreen1(:,1)).*100,single160microgreen1(:,2)];
s160g2 = [abs(single160microgreen2(:,1)).*100,single160microgreen2(:,2)];
s160g3 = [abs(single160microgreen3(:,1)).*100,single160microgreen3(:,2)];
s160r1 = [abs(single160microred1(:,1)).*100,single160microred1(:,2)];
s160r2 = [abs(single160microred2(:,1)).*100,single160microred2(:,2)];
s160r3 = [abs(single160microred3(:,1)).*100,single160microred3(:,2)];
while i<40

    s20g1(:,1) = smooth(s20g1(:,1));
    s20g1(:,2) = smooth(s20g1(:,2));
    s20g2(:,1) = smooth(s20g2(:,1));
    s20g2(:,2) = smooth(s20g2(:,2));
    s20g3(:,1) = smooth(s20g3(:,1));
    s20g3(:,2) = smooth(s20g3(:,2));
    s20r1(:,1) = smooth(s20r1(:,1));
    s20r1(:,2) = smooth(s20r1(:,2));
    s20r2(:,1) = smooth(s20r2(:,1));
    s20r2(:,2) = smooth(s20r2(:,2));
    s20r3(:,1) = smooth(s20r3(:,1));
    s20r3(:,2) = smooth(s20r3(:,2));
    s40g1(:,1) = smooth(s40g1(:,1));
    s40g1(:,2) = smooth(s40g1(:,2));
    s40g2(:,1) = smooth(s40g2(:,1));
    s40g2(:,2) = smooth(s40g2(:,2));
    s40g3(:,1) = smooth(s40g3(:,1));
    s40g3(:,2) = smooth(s40g3(:,2));
    s40r1(:,1) = smooth(s40r1(:,1));
    s40r1(:,2) = smooth(s40r1(:,2));
    s40r2(:,1) = smooth(s40r2(:,1));
    s40r2(:,2) = smooth(s40r2(:,2));
    s40r3(:,1) = smooth(s40r3(:,1));
    s40r3(:,2) = smooth(s40r3(:,2));
    s80g1(:,1) = smooth(s80g1(:,1));
    s80g1(:,2) = smooth(s80g1(:,2));
    s80g2(:,1) = smooth(s80g2(:,1));
    s80g2(:,2) = smooth(s80g2(:,2));
    s80g3(:,1) = smooth(s80g3(:,1));
    s80g3(:,2) = smooth(s80g3(:,2));
    s80r1(:,1) = smooth(s80r1(:,1));
    s80r1(:,2) = smooth(s80r1(:,2));
    s80r2(:,1) = smooth(s80r2(:,1));
    s80r2(:,2) = smooth(s80r2(:,2));
    s80r3(:,1) = smooth(s80r3(:,1));
    s80r3(:,2) = smooth(s80r3(:,2));
    s160g1(:,1) = smooth(s160g1(:,1));
    s160g1(:,2) = smooth(s160g1(:,2));
    s160g2(:,1) = smooth(s160g2(:,1));
    s160g2(:,2) = smooth(s160g2(:,2));
    s160g3(:,1) = smooth(s160g3(:,1));
    s160g3(:,2) = smooth(s160g3(:,2));
    s160r1(:,1) = smooth(s160r1(:,1));
    s160r1(:,2) = smooth(s160r1(:,2));
    s160r2(:,1) = smooth(s160r2(:,1));
    s160r2(:,2) = smooth(s160r2(:,2));
    s160r3(:,1) = smooth(s160r3(:,1));
    s160r3(:,2) = smooth(s160r3(:,2));

i = i+1;
end

%% ANALYZING DATA

%SINGLE SLIT DATA
%S20G
tempStartX = 6.5;
tempEndX = 10;
tempMinY = 0;
tempMaxY = 10;
s20g1w = widthFind(s20g1, tempStartX, tempEndX, tempMinY, tempMaxY)
s20g2w = widthFind(s20g2, tempStartX, tempEndX, tempMinY, tempMaxY)
s20g3w = widthFind(s20g3, tempStartX, tempEndX, tempMinY, tempMaxY)
s20gw = (s20g1w+s20g2w+s20g3w)/3
%S20R
tempStartX = 7;
tempEndX = 10.5;
tempMinY = 0;
tempMaxY = 10;
s20r1w = widthFind(s20r1, tempStartX, tempEndX, tempMinY, tempMaxY);
s20r2w = widthFind(s20r2, tempStartX, tempEndX, tempMinY, tempMaxY);
s20r3w = widthFind(s20r3, tempStartX, tempEndX, tempMinY, tempMaxY);
s20rw = (s20r1w+s20r2w+s20r3w)/3
%S40G
tempStartX = 7.4;
tempEndX = 9;
tempMinY = 10;
tempMaxY = 50;
s40g1w = widthFind(s40g1, tempStartX, tempEndX, tempMinY, tempMaxY);
s40g2w = widthFind(s40g2, tempStartX, tempEndX, tempMinY, tempMaxY);
s40g3w = widthFind(s40g3, tempStartX, tempEndX, tempMinY, tempMaxY);
s40gw = (s40g1w+s40g2w+s40g3w)/3
%S40R
tempStartX = 7;
tempEndX = 10;
tempMinY = 5;
tempMaxY = 30;
s40r1w = widthFind(s40r1, tempStartX, tempEndX, tempMinY, tempMaxY);
s40r2w = widthFind(s40r2, tempStartX, tempEndX, tempMinY, tempMaxY);
s40r3w = widthFind(s40r3, tempStartX, tempEndX, tempMinY, tempMaxY);
s40rw = (s40r1w+s40r2w+s40r3w)/3
%S80G
tempStartX = 7.8;
tempEndX = 8.6;
tempMinY = 5;
tempMaxY = 20;
s80g1w = widthFind(s80g1, tempStartX, tempEndX, tempMinY, tempMaxY);
s80g2w = widthFind(s80g2, tempStartX, tempEndX, tempMinY, tempMaxY);
s80g3w = widthFind(s80g3, tempStartX, tempEndX, tempMinY, tempMaxY);
s80gw = (s80g1w+s80g2w+s80g3w)/3
%S80R
tempStartX = 8;
tempEndX = 8.9;
tempMinY = 5;
tempMaxY = 20;
s80r1w = widthFind(s80r1, tempStartX, tempEndX, tempMinY, tempMaxY);
s80r2w = widthFind(s80r2, tempStartX, tempEndX, tempMinY, tempMaxY);
s80r3w = widthFind(s80r3, tempStartX, tempEndX, tempMinY, tempMaxY);
s80rw = (s80r1w+s80r2w+s80r3w)/3
%S160G
tempStartX = 5;
tempEndX = 10;
tempMinY = 0;
tempMaxY = 15;
s160g1w = widthFind(s160g1, tempStartX, tempEndX, tempMinY, tempMaxY);
s160g2w = widthFind(s160g2, tempStartX, tempEndX, tempMinY, tempMaxY);
s160g3w = widthFind(s160g3, tempStartX, tempEndX, tempMinY, tempMaxY);
s160gw = (s160g1w+s160g2w+s160g3w)/3
%S160R
tempStartX = 0;
tempEndX = 100;
tempMinY = 0;
tempMaxY = 100;
s160r1w = widthFind(s160r1, tempStartX, tempEndX, tempMinY, tempMaxY);
s160r2w = widthFind(s160r2, tempStartX, tempEndX, tempMinY, tempMaxY);
s160r3w = widthFind(s160r3, tempStartX, tempEndX, tempMinY, tempMaxY);
s160rw = (s160r1w+s160r2w+s160r3w)/3
%FINAL
slit = [.02,.04,.08,.16];
gw = [s20gw, s40gw, s80gw, s160gw];
rw = [s20rw, s40rw, s80rw, s160rw];

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
    title('Single Slit a=200\mum green laser')
    xlim([min(s20g1(:,1)) max(s20g1(:,1))])
    xlabel('Distance (cm)')
    ylabel('Transmission (%)')
    grid off
hold off
subplot(1,2,2)
hold on
plot(s20r1(:,1),s20r1(:,2),'black')
plot(s20r2(:,1),s20r2(:,2),'b')
plot(s20r3(:,1),s20r3(:,2),'c')
    legend('Run 1','Run 2','Run 3')
    title('Single Slit a=200\mum red laser')
    xlim([min(s20r1(:,1)) max(s20r1(:,1))])
    xlabel('Distance (cm)')
    ylabel('Transmission (%)')
grid off
hold off
%S40
f2 = figure(2);
subplot(1,2,1)
hold on
plot(s40g1(:,1),s40g1(:,2),'black')
plot(s40g2(:,1),s40g2(:,2),'b')
plot(s40g3(:,1),s40g3(:,2),'c')
    legend('Run 1','Run 2','Run 3')
    title('Single Slit a=400\mum green laser')
    xlim([min(s40g1(:,1)) max(s40g1(:,1))])
    xlabel('Distance (cm)')
    ylabel('Transmission (%)')
grid off
hold off
subplot(1,2,2)
hold on
plot(s40r1(:,1),s40r1(:,2),'black')
plot(s40r2(:,1),s40r2(:,2),'b')
plot(s40r3(:,1),s40r3(:,2),'c')
    legend('Run 1','Run 2','Run 3')
    title('Single Slit a=400\mum red laser')
    xlim([min(s40r1(:,1)) max(s40r1(:,1))])
    xlabel('Distance (cm)')
    ylabel('Transmission (%)')
grid off
hold off
%S80
f3 = figure(3);
subplot(1,2,1)
hold on
plot(s80g1(:,1),s80g1(:,2),'black')
plot(s80g2(:,1),s80g2(:,2),'b')
plot(s80g3(:,1),s80g3(:,2),'c')
    legend('Run 1','Run 2','Run 3')
    title('Single Slit a=800\mum green laser')
    xlim([7 9.5])
    xlabel('Distance (cm)')
    ylabel('Transmission (%)')
grid off
hold off
subplot(1,2,2)
hold on
plot(s80r1(:,1),s80r1(:,2),'black')
plot(s80r2(:,1),s80r2(:,2),'b')
plot(s80r3(:,1),s80r3(:,2),'c')
    legend('Run 1','Run 2','Run 3')
    title('Single Slit a=800\mum red laser')
    xlim([7 9.8])
    xlabel('Distance (cm)')
    ylabel('Transmission (%)')
grid off
hold off
%S160
f4 = figure(4);
subplot(1,2,1)
hold on
plot(s160g1(:,1),s160g1(:,2),'black')
plot(s160g2(:,1),s160g2(:,2),'b')
plot(s160g3(:,1),s160g3(:,2),'c')
    legend('Run 1','Run 2','Run 3')
    title('Single Slit a=1600\mum green laser')
    xlim([7.6 8.8])
    xlabel('Distance (cm)')
    ylabel('Transmission (%)')
grid off
hold off
subplot(1,2,2)
hold on
plot(s160r1(:,1),s160r1(:,2),'black')
plot(s160r2(:,1),s160r2(:,2),'b')
plot(s160r3(:,1),s160r3(:,2),'c')
    legend('Run 1','Run 2','Run 3')
    title('Single Slit a=1600\mum red laser')
    xlim([7.8 9.15])
    xlabel('Distance (cm)')
    ylabel('Transmission (%)')
grid off
hold off
%FINAL
x = 0:.001:.2;
f5 = figure(5);
a = 1/(.3)
gw = 1./gw;
rw = 1./rw;
S1 = polyfit(slit,gw,1);
S2 = polyfit(slit,rw,1);
R1 = polyval(S1,x);
R2 = polyval(S2,x);
hold on
subplot(1,2,1)
plot(slit,gw,'black')
hold on
plot(x,R1,'b--')
    title('Green Laser')
    xlabel('Width (mm)')
    ylabel('1/a (cm^{-1})')
hold off
subplot(1,2,2)
plot(slit,rw,'black')
hold on
plot(x,R2,'b--')
    title('Red Laser')
    xlabel('Width (mm)')
    ylabel('1/a (cm^{-1})')
hold off

f1.Color = 'WHITE';
f2.Color = 'WHITE';
f3.Color = 'WHITE';
f4.Color = 'WHITE';
f5.Color = 'WHITE';