clc;clear;clf;

%INPUTS
sample = true;
polarizeY = false;
polarizeX = false;
phi = deg2rad(30)+deg2rad(45);

smoothness_of_animation = .03;
speed_of_animation = .001;
time_length = 4;

%%
Amplitude = 1;
omega1 = pi./2;
omega2 = pi./2;
phaseDifference = pi./2 + phi;

figure(1)
i = 1;
for t = 0:smoothness_of_animation:time_length
    
    clf;
    if sample == true
        y = (.9)*Amplitude.*sin(omega1.*t+phi);
        x = (.9)*Amplitude.*cos(omega2.*t);
    else
        y = Amplitude.*sin(omega1.*t+phi);
        x = Amplitude.*cos(omega2.*t);
    end
    
    
    if polarizeY == true
        x = 0;
    end
    
    if polarizeX == true
        y = 0;
    end
    
    path(i, 1) = x;
    path(i, 2) = y;
    plot(path(:,1), path(:,2))
    hold on
    
    line([0 x], [0 y], 'linewidth', 3)
    line([0 x], [0 0], 'color', 'c')
    line([0 0], [0 y], 'color', 'c')
    line([x x], [y 0], 'linestyle', '--', 'color', 'c')
    line([x 0], [y y], 'linestyle', '--', 'color', 'c')
    
    line([1 1], [10 -10], 'linestyle', '--', 'color', 'r', 'linewidth', 1.5)
    line([-1 -1], [10 -10], 'linestyle', '--', 'color', 'r', 'linewidth', 1.5)
    line([-10 10], [1 1], 'linestyle', '--', 'color', 'r', 'linewidth', 1.5)
    line([-10 10], [-1 -1], 'linestyle', '--', 'color', 'r', 'linewidth', 1.5)
    
    text(-1.2,1.1,sprintf('t = %.2f s', t), 'fontsize', 15)
    text(-.2,1.1,sprintf('Phase Difference = %.2f radians', phaseDifference), 'fontsize', 15)
    
    text(x/1.2+.02, y/1.2+.05, 'E', 'fontsize', 20)
    text(x/2, -.05, sprintf('E_x = %.2f', x), 'fontsize', 13)
    text(0, y/2, sprintf('E_y = %.2f', y), 'fontsize', 13)
    
    grid on
    xlim([-1.25 1.25])
    ylim([-1.25 1.25])
    pause(speed_of_animation)
    hold off
    
    i = i+1;
    
end