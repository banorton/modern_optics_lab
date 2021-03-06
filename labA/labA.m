clear;clc;clf;
%%
%LOADS FIRST SAMPLE
load 1g2_irradiance_with_plastic_cover.txt
load 1g2_irradiance_without_plastic_cover.txt
load 1g2_transmission_with_plastic_cover.txt
load 1g2_transmission_without_plastic_cover.txt
load 1g2_spectra_with_plastic_cover.txt
load 1g2_spectra_without_plastic_cover.txt
load 1g2_max.txt
load 1g2_min.txt

%LOADS SECOND SAMPLE
load 2g2_irradiance_with_plastic_cover.txt
load 2g2_irradiance_without_plastic_cover.txt
load 2g2_transmission_with_plastic_cover.txt
load 2g2_transmission_without_plastic_cover.txt
load 2g2_spectra_with_plastic_cover.txt
load 2g2_spectra_without_plastic_cover.txt
load 2g2_max.txt
load 2g2_min.txt

%LOADS THIRD SAMPLE
load 3g2_irradiance_with_plastic_cover.txt
load 3g2_irradiance_without_plastic_cover.txt
load 3g2_transmission_with_plastic_cover.txt
load 3g2_transmission_without_plastic_cover.txt
load 3g2_spectra_with_plastic_cover.txt
load 3g2_spectra_without_plastic_cover.txt
load 3g2_max.txt
load 3g2_min.txt

%LOADS BLUE FILTER
load blue_filter_spectra.txt
load blue_filter_transmission.txt
load blue_filter_irradiance.txt

%LOADS RED FILTER
load red_filter_spectra.txt
load red_filter_transmission.txt
load red_filter_irradiance.txt

%LOADS GREEN FILTER
load green_filter_spectra.txt
load green_filter_transmission.txt
load green_filter_irradiance.txt
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%

%PLOTTING SAMPLE IRRADIANCE
% figure(1)
% plot(X1g2_irradiance_with_plastic_cover(:,1), X1g2_irradiance_with_plastic_cover(:,2))
% ylim([0 100])
% title('1g2 irradiance with plastic cover')
% 
% figure(2)
% plot(X1g2_irradiance_without_plastic_cover(:,1), X1g2_irradiance_without_plastic_cover(:,2))
% ylim([0 100])
% title('1g2 irradiance without plastic cover')
% 
% figure(3)
% plot(X2g2_irradiance_with_plastic_cover(:,1), X2g2_irradiance_with_plastic_cover(:,2))
% ylim([0 100])
% title('2g2 irradiance with plastic cover')
% 
% figure(4)
% plot(X2g2_irradiance_without_plastic_cover(:,1), X2g2_irradiance_without_plastic_cover(:,2))
% ylim([0 100])
% title('2g2 irradiance without plastic cover')
% 
% figure(5)
% plot(X3g2_irradiance_with_plastic_cover(:,1), X3g2_irradiance_with_plastic_cover(:,2))
% ylim([0 100])
% title('3g2 irradiance with plastic cover')
% 
% figure(6)
% plot(X3g2_irradiance_without_plastic_cover(:,1), X3g2_irradiance_without_plastic_cover(:,2))
% ylim([0 100])
% title('3g2 irradiance without plastic cover')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
clf;

%PLOTTING SAMPLE TRANSMISSION
% figure(7)
% subplot(1,2,1)
% plot(X1g2_transmission_with_plastic_cover(:,1), X1g2_transmission_with_plastic_cover(:,2))
%     title('1G2 Transmission w/ Plastic Cover')
%     ylim([0 100])
%     xlim([345 1040])
%     ylabel('Transmission(%)')
%     xlabel('Wavelength(nm)')
%     line([480 480], [100 0], 'Color', 'red', 'Linestyle', '--', 'linewidth', 1)
%     text(490, 80, '480nm')
%     line([980 980], [100 0], 'Color', 'red', 'Linestyle', '--', 'linewidth', 1)
%     text(870, 80, '980nm')
% 
% subplot(1,2,2)
% plot(X1g2_transmission_without_plastic_cover(:,1), X1g2_transmission_without_plastic_cover(:,2))
%     title('1G2 Transmission')
%     ylim([0 100])
%     xlim([345 1040])
%     ylabel('Transmission(%)')
%     xlabel('Wavelength(nm)')
%     line([480 480], [100 0], 'Color', 'red', 'Linestyle', '--', 'linewidth', 1)
%     text(490, 80, '480nm')
%     line([980 980], [100 0], 'Color', 'red', 'Linestyle', '--', 'linewidth', 1)
%     text(870, 80, '980nm')

% figure(8)
% subplot(1,2,1)
% plot(X2g2_transmission_with_plastic_cover(:,1), X2g2_transmission_with_plastic_cover(:,2))
%     title('2G2 Transmission w/ Plastic Cover')
%     ylim([0 100])
%     xlim([345 1040])
%     ylabel('Transmission(%)')
%     xlabel('Wavelength(nm)')
%     line([500 500], [100 0], 'Color', 'red', 'Linestyle', '--', 'linewidth', 1)
%     text(515, 93, '500nm')
%     line([950 950], [100 0], 'Color', 'red', 'Linestyle', '--', 'linewidth', 1)
%     text(810, 93, '950nm')
% 
% subplot(1,2,2)
% plot(X2g2_transmission_without_plastic_cover(:,1), X2g2_transmission_without_plastic_cover(:,2))
%     title('2G2 Transmission')
%     ylim([0 100])
%     xlim([345 1040])
%     ylabel('Transmission(%)')
%     xlabel('Wavelength(nm)')
%     line([500 500], [100 0], 'Color', 'red', 'Linestyle', '--', 'linewidth', 1)
%     text(515, 93, '500nm')
%     line([950 950], [100 0], 'Color', 'red', 'Linestyle', '--', 'linewidth', 1)
%     text(810, 93, '950nm')

% figure(9)
% subplot(1,2,1)
% plot(X3g2_transmission_with_plastic_cover(:,1), X3g2_transmission_with_plastic_cover(:,2))
%     title('3G2 Transmission w/ Plastic Cover')
%     ylim([0 100])
%     xlim([345 1040])
%     ylabel('Transmission(%)')
%     xlabel('Wavelength(nm)')
%     line([540 540], [100 0], 'Color', 'red', 'Linestyle', '--', 'linewidth', 1)
%     text(555, 93, '540nm')
%     line([970 970], [100 0], 'Color', 'red', 'Linestyle', '--', 'linewidth', 1)
%     text(830, 93, '970nm')
% 
% subplot(1,2,2)
% plot(X3g2_transmission_without_plastic_cover(:,1), X3g2_transmission_without_plastic_cover(:,2))
%     title('3G2 Transmission')
%     ylim([0 100])
%     xlim([345 1040])
%     ylabel('Transmission(%)')
%     xlabel('Wavelength(nm)')
%     line([540 540], [100 0], 'Color', 'red', 'Linestyle', '--', 'linewidth', 1)
%     text(555, 93, '540nm')
%     line([970 970], [100 0], 'Color', 'red', 'Linestyle', '--', 'linewidth', 1)
%     text(830, 93, '970nm')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%

%PLOTTING SAMPLE SPECTRA
% figure(13)
% plot(X1g2_spectra_with_plastic_cover(:,1), X1g2_spectra_with_plastic_cover(:,2))
% title('1g2 spectra with plastic cover')
% ylim([0 4*10^4])
% 
% figure(14)
% plot(X1g2_spectra_without_plastic_cover(:,1), X1g2_spectra_without_plastic_cover(:,2))
% title('1g2 spectra without plastic cover')
% ylim([0 4*10^4])
% 
% figure(15)
% plot(X2g2_spectra_with_plastic_cover(:,1), X2g2_spectra_with_plastic_cover(:,2))
% title('2g2 spectra with plastic cover')
% ylim([0 4*10^4])
% 
% figure(16)
% plot(X2g2_spectra_without_plastic_cover(:,1), X2g2_spectra_without_plastic_cover(:,2))
% title('2g2 spectra without plastic cover')
% ylim([0 4*10^4])
% 
% figure(17)
% plot(X3g2_spectra_with_plastic_cover(:,1), X3g2_spectra_with_plastic_cover(:,2))
% title('3g2 spectra with plastic cover')
% ylim([0 4*10^4])
% 
% figure(18)
% plot(X3g2_spectra_without_plastic_cover(:,1), X3g2_spectra_without_plastic_cover(:,2))
% title('3g2 spectra without plastic cover')
% ylim([0 4*10^4])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
clf;

%Polarization
% figure(1)
% subplot(1,3,1)
% plot(X1g2_min(:,1),X1g2_min(:,2), 'c')
% hold on
% plot(X1g2_max(:,1),X1g2_max(:,2))
%     title('1G2 Polarization Intensity')
%     legend('Minimum Intensity', 'Maximum Intensity', 'location', 'northwest')
%     xlabel('Wavelength (nm)')
%     ylabel('Intensity (counts)')
%     ylim([0 14000])
%     xlim([345 1040])
% 
% subplot(1,3,2)
% plot(X2g2_min(:,1),X2g2_min(:,2), 'c')
% hold on
% plot(X2g2_max(:,1),X2g2_max(:,2))
%     title('2G2 Polarization Intensity')
%     legend('Minimum Intensity', 'Maximum Intensity', 'location', 'northwest')
%     xlabel('Wavelength (nm)')
%     ylabel('Intensity (counts)')
%     ylim([0 14000])
%     xlim([345 1040])
% 
% subplot(1,3,3)
% plot(X3g2_min(:,1),X3g2_min(:,2), 'c')
% hold on
% plot(X3g2_max(:,1),X3g2_max(:,2))
%     title('3G2 Polarization Intensity')
%     legend('Minimum Intensity', 'Maximum Intensity', 'location', 'northwest')
%     xlabel('Wavelength (nm)')
%     ylabel('Intensity (counts)')
%     ylim([0 14000])
%     xlim([345 1040])

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
clf;

%Derivative of Transmission
% figure(1)
% xdiff = diff(X1g2_transmission_with_plastic_cover(:,1));
% ydiff = diff(X1g2_transmission_with_plastic_cover(:,2));
% x = xdiff./ydiff;

%SPECTRAL CONSTRAST ESTIMATER: INPUT THE SAMPLE AND THE WAVELENGTHS TO MEASURE AND SAMPLE RATE
sample_01 = X1g2_transmission_without_plastic_cover(:,1);
sample_02 = X1g2_transmission_without_plastic_cover(:,2);
start = 480;
finish = 980;
samplerate = 40;

mask = zeros(1,numel(sample_01));
stepsize = round(numel(sample_01)/samplerate);
for i = start:stepsize:numel(sample_01)
   mask(i) = 1;
end
x = sample_01;
y = sample_02.*mask';
a = 1;
for n = 1:numel(sample_01)
    if y(n) > 0
        z(a,2) = y(n);
        z(a,1) = x(n);
        a = a+1;
    end
end


figure(1)
subplot(1,3,1)
plot(sample_01,sample_02)
    ylim([0 100])
    xlim([start finish])
    title('1G2 Transmission w/o Plastic')
    xlabel('Wavelength (nm)')
    ylabel('Intensity (counts)')
    
subplot(1,3,2)
plot(z(:,1),z(:,2))
    ylim([0 100])
    xlim([start finish])
    title('Sample of 1G2 Transmission w/o Plastic')
    xlabel('Wavelength (nm)')
    ylabel('Intensity (counts)')
    
subplot(1,3,3)
y1 = diff(z(:,2))./diff(z(:,1));
x1 = start:(finish-start)/(numel(y1)-1):finish;
plot(x1,y1,'b')
    title('Estimated Spectral Contrast')
    xlabel('Wavelength (nm)')
    ylabel('Intensity/Wavelength (counts/nm)')
    xlim([start finish])

% figure(2)
% plot(X1g2_transmission_with_plastic_cover(:,1), X1g2_transmission_with_plastic_cover(:,2))
%     title('1G2 Transmission w/ Plastic Cover')
%     ylim([0 100])
%     xlim([345 1040])
%     ylabel('Transmission(%)')
%     xlabel('Wavelength(nm)')
%     line([480 480], [100 0], 'Color', 'red', 'Linestyle', '--', 'linewidth', 1)
%     text(490, 80, '480nm')
%     line([980 980], [100 0], 'Color', 'red', 'Linestyle', '--', 'linewidth', 1)
%     text(870, 80, '980nm')
% 
% 
% 



















