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
s20g2min = [s20g2(:,1),s20g2(:,2).*islocalmin(s20g2(:,2))];
s20g2min( (s20g2min(:,1) < tempStartX) , : ) = [];
s20g2min( (s20g2min(:,1) > tempEndX) , : ) = [];
s20g2min(s20g2min(:,2)==0,:) = [];
s20g2min(s20g2min(:,2)>tempMaxY,:) = [];
s20g2min(s20g2min(:,2)<tempMinY,:) = [];
s20g2width = s20g2min(2,1)-s20g2min(1,1);
s20g3min = [s20g3(:,1),s20g3(:,2).*islocalmin(s20g3(:,2))];
s20g3min( (s20g3min(:,1) < tempStartX) , : ) = [];
s20g3min( (s20g3min(:,1) > tempEndX) , : ) = [];
s20g3min(s20g3min(:,2)==0,:) = [];
s20g3min(s20g3min(:,2)>tempMaxY,:) = [];
s20g3min(s20g3min(:,2)<tempMinY,:) = [];
s20g3width = s20g3min(2,1)-s20g3min(1,1);
s20gw = (s20g1width+s20g2width+s20g3width)/3
%S20R
tempStartX = .07;
tempEndX = .105;
tempMaxY = 10;
tempMinY = 0;
s20r1min = [s20r1(:,1),s20r1(:,2).*islocalmin(s20r1(:,2))];
s20r1min( (s20r1min(:,1) < tempStartX) , : ) = [];
s20r1min( (s20r1min(:,1) > tempEndX) , : ) = [];
s20r1min(s20r1min(:,2)==0,:) = [];
s20r1min(s20r1min(:,2)>tempMaxY,:) = [];
s20r1min(s20r1min(:,2)<tempMinY,:) = [];
s20r1width = s20r1min(2,1)-s20r1min(1,1);
s20r2min = [s20r2(:,1),s20r2(:,2).*islocalmin(s20r2(:,2))];
s20r2min( (s20r2min(:,1) < tempStartX) , : ) = [];
s20r2min( (s20r2min(:,1) > tempEndX) , : ) = [];
s20r2min(s20r2min(:,2)==0,:) = [];
s20r2min(s20r2min(:,2)>tempMaxY,:) = [];
s20r2min(s20r2min(:,2)<tempMinY,:) = [];
s20r2width = s20r2min(2,1)-s20r2min(1,1);
s20r3min = [s20r3(:,1),s20r3(:,2).*islocalmin(s20r3(:,2))];
s20r3min( (s20r3min(:,1) < tempStartX) , : ) = [];
s20r3min( (s20r3min(:,1) > tempEndX) , : ) = [];
s20r3min(s20r3min(:,2)==0,:) = [];
s20r3min(s20r3min(:,2)>tempMaxY,:) = [];
s20r3min(s20r3min(:,2)<tempMinY,:) = [];
s20r3width = s20r3min(2,1)-s20r3min(1,1);
s20rw = (s20r1width+s20r2width+s20r3width)/3
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
s20g2min = [s20g2(:,1),s20g2(:,2).*islocalmin(s20g2(:,2))];
s20g2min( (s20g2min(:,1) < tempStartX) , : ) = [];
s20g2min( (s20g2min(:,1) > tempEndX) , : ) = [];
s20g2min(s20g2min(:,2)==0,:) = [];
s20g2min(s20g2min(:,2)>tempMaxY,:) = [];
s20g2min(s20g2min(:,2)<tempMinY,:) = [];
s20g2width = s20g2min(2,1)-s20g2min(1,1);
s20g3min = [s20g3(:,1),s20g3(:,2).*islocalmin(s20g3(:,2))];
s20g3min( (s20g3min(:,1) < tempStartX) , : ) = [];
s20g3min( (s20g3min(:,1) > tempEndX) , : ) = [];
s20g3min(s20g3min(:,2)==0,:) = [];
s20g3min(s20g3min(:,2)>tempMaxY,:) = [];
s20g3min(s20g3min(:,2)<tempMinY,:) = [];
s20g3width = s20g3min(2,1)-s20g3min(1,1);
s20gw = (s20g1width+s20g2width+s20g3width)/3
%S20R
tempStartX = .07;
tempEndX = .105;
tempMaxY = 10;
tempMinY = 0;
s20r1min = [s20r1(:,1),s20r1(:,2).*islocalmin(s20r1(:,2))];
s20r1min( (s20r1min(:,1) < tempStartX) , : ) = [];
s20r1min( (s20r1min(:,1) > tempEndX) , : ) = [];
s20r1min(s20r1min(:,2)==0,:) = [];
s20r1min(s20r1min(:,2)>tempMaxY,:) = [];
s20r1min(s20r1min(:,2)<tempMinY,:) = [];
s20r1width = s20r1min(2,1)-s20r1min(1,1);
s20r2min = [s20r2(:,1),s20r2(:,2).*islocalmin(s20r2(:,2))];
s20r2min( (s20r2min(:,1) < tempStartX) , : ) = [];
s20r2min( (s20r2min(:,1) > tempEndX) , : ) = [];
s20r2min(s20r2min(:,2)==0,:) = [];
s20r2min(s20r2min(:,2)>tempMaxY,:) = [];
s20r2min(s20r2min(:,2)<tempMinY,:) = [];
s20r2width = s20r2min(2,1)-s20r2min(1,1);
s20r3min = [s20r3(:,1),s20r3(:,2).*islocalmin(s20r3(:,2))];
s20r3min( (s20r3min(:,1) < tempStartX) , : ) = [];
s20r3min( (s20r3min(:,1) > tempEndX) , : ) = [];
s20r3min(s20r3min(:,2)==0,:) = [];
s20r3min(s20r3min(:,2)>tempMaxY,:) = [];
s20r3min(s20r3min(:,2)<tempMinY,:) = [];
s20r3width = s20r3min(2,1)-s20r3min(1,1);
s20rw = (s20r1width+s20r2width+s20r3width)/3


%DOUBLE SLIT DATA

%% PLOTTING DATA

%SINGLE SLIT DATA
figure(1)
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
hold off
subplot(1,2,2)
hold on
plot(s20r1(:,1),s20r1(:,2),'black')
plot(s20r2(:,1),s20r2(:,2),'b')
plot(s20r3(:,1),s20r3(:,2),'c')
    legend('Run 1','Run 2','Run 3')
    title('Single Slit a=20\mum red laser')
    xlabel('Distance (mm)')
    ylabel('Transmission (%)')
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