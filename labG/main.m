clc;clear;clf;
%% LOADING DATA
Files = dir('C:\Users\brandon\src\modernoptics\labG\data');
for i=3:length(Files)
    load(fullfile('..','labG','data',Files(i).name));
end

%% ANALYZING DATA

%SINGLE SLIT DATA
s20g1 = [abs(single20microgreen1(:,1)),single20microgreen1(:,2)];
s20g2 = [abs(single20microgreen2(:,1)),single20microgreen2(:,2)];
s20g3 = [abs(single20microgreen3(:,1)),single20microgreen3(:,2)];
s20r1 = [abs(single20microred1(:,1)),single20microred1(:,2)];
s20r2 = [abs(single20microred2(:,1)),single20microred2(:,2)];
s20r3 = [abs(single20microred3(:,1)),single20microred3(:,2)];
s40g1 = [abs(single40microgreen1(:,1)),single40microgreen1(:,2)];
s40g2 = [abs(single40microgreen2(:,1)),single40microgreen2(:,2)];
s40g3 = [abs(single40microgreen3(:,1)),single40microgreen3(:,2)];
s40r1 = [abs(single40microred1(:,1)),single40microred1(:,2)];
s40r2 = [abs(single40microred2(:,1)),single40microred2(:,2)];
s40r3 = [abs(single40microred3(:,1)),single40microred3(:,2)];
s80g1 = [abs(single80microgreen1(:,1)),single80microgreen1(:,2)];
s80g2 = [abs(single80microgreen2(:,1)),single80microgreen2(:,2)];
s80g3 = [abs(single80microgreen3(:,1)),single80microgreen3(:,2)];
s80r1 = [abs(single80microred1(:,1)),single80microred1(:,2)];
s80r2 = [abs(single80microred2(:,1)),single80microred2(:,2)];
s80r3 = [abs(single80microred3(:,1)),single80microred3(:,2)];
s160g1 = [abs(single160microgreen1(:,1)),single160microgreen1(:,2)];
s160g2 = [abs(single160microgreen2(:,1)),single160microgreen2(:,2)];
s160g3 = [abs(single160microgreen3(:,1)),single160microgreen3(:,2)];
s160r1 = [abs(single160microred1(:,1)),single160microred1(:,2)];
s160r2 = [abs(single160microred2(:,1)),single160microred2(:,2)];
s160r3 = [abs(single160microred3(:,1)),single160microred3(:,2)];

%S20G
tempStartX = .065;
tempEndX = .1;
tempMaxY = 10;
tempMinY = 0;
s20g1min = [s20g1(:,1),s20g1(:,2).*islocalmin(s20g1(:,2))];
s20g1min( (s20g1min(:,1) < tempStartX) , : ) = [];
s20g1min( (s20g1min(:,1) > tempEndX) , : ) = [];
s20g1min(s20g1min(:,2)==0,:) = [];
s20g1min(s20g1min(:,2)>tempMaxY,:) = [];
s20g1min(s20g1min(:,2)<tempMinY,:) = [];
s20g1width = s20g1min(2,1)-s20g1min(1,1);
%S20R
tempStartX = .065;
tempEndX = .1;
tempMaxY = 10;
tempMinY = 0;
s20r1min = [s20r1(:,1),s20r1(:,2).*islocalmin(s20r1(:,2))];
s20r1min( (s20r1min(:,1) < tempStartX) , : ) = [];
s20r1min( (s20r1min(:,1) > tempEndX) , : ) = [];
s20r1min(s20r1min(:,2)==0,:) = [];
s20r1min(s20r1min(:,2)>tempMaxY,:) = [];
s20r1min(s20r1min(:,2)<tempMinY,:) = [];
s20r1width = s20r1min(2,1)-s20r1min(1,1);


%DOUBLE SLIT DATA

%% PLOTTING DATA

%SINGLE SLIT DATA
figure(1)
hold on
plot(s20g1(:,1),s20g1(:,2),'black')
    title('Single Slit a=20\mum green laser')
    xlim([.04 .13])
hold off

figure(2)
hold on
plot(s20r1(:,1),s20r1(:,2),'black')
    title('Single Slit a=20\mum red laser')
    xlim([.04 .13])
hold off

%DOUBLE SLIT DATA
% d045g1 = double045green1;
% figure()
% hold on
% plot(d045g1(:,1),d045g1(:,2),'black')
%     title('Double Slit a=.04mm d=.5mm green laser')
%     ylim([0 12])
%     xlim([.06 .14])
% hold off