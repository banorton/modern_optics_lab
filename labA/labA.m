clear;clc;clf;
%%
%LOADS FIRST SAMPLE
load 1g2_irradiance_with_plastic_cover.txt
load 1g2_irradiance_without_plastic_cover.txt
load 1g2_transmission_with_plastic_cover.txt
load 1g2_transmission_without_plastic_cover.txt
load 1g2_spectra_with_plastic_cover.txt
load 1g2_spectra_without_plastic_cover.txt

%LOADS SECOND SAMPLE
load 2g2_irradiance_with_plastic_cover.txt
load 2g2_irradiance_without_plastic_cover.txt
load 2g2_transmission_with_plastic_cover.txt
load 2g2_transmission_without_plastic_cover.txt
load 2g2_spectra_with_plastic_cover.txt
load 2g2_spectra_without_plastic_cover.txt

%LOADS THIRD SAMPLE
load 3g2_irradiance_with_plastic_cover.txt
load 3g2_irradiance_without_plastic_cover.txt
load 3g2_transmission_with_plastic_cover.txt
load 3g2_transmission_without_plastic_cover.txt
load 3g2_spectra_with_plastic_cover.txt
load 3g2_spectra_without_plastic_cover.txt

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
figure(1)
plot(X1g2_irradiance_with_plastic_cover(:,1), X1g2_irradiance_with_plastic_cover(:,2))
ylim([0 100])
title('1g2 irradiance with plastic cover')

figure(2)
plot(X1g2_irradiance_without_plastic_cover(:,1), X1g2_irradiance_without_plastic_cover(:,2))
ylim([0 100])
title('1g2 irradiance without plastic cover')

figure(3)
plot(X2g2_irradiance_with_plastic_cover(:,1), X2g2_irradiance_with_plastic_cover(:,2))
ylim([0 100])
title('2g2 irradiance with plastic cover')

figure(4)
plot(X2g2_irradiance_without_plastic_cover(:,1), X2g2_irradiance_without_plastic_cover(:,2))
ylim([0 100])
title('2g2 irradiance without plastic cover')

figure(5)
plot(X3g2_irradiance_with_plastic_cover(:,1), X3g2_irradiance_with_plastic_cover(:,2))
ylim([0 100])
title('3g2 irradiance with plastic cover')

figure(6)
plot(X3g2_irradiance_without_plastic_cover(:,1), X3g2_irradiance_without_plastic_cover(:,2))
ylim([0 100])
title('3g2 irradiance without plastic cover')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%

%PLOTTING SAMPLE TRANSMISSION
figure(7)
plot(X1g2_transmission_with_plastic_cover(:,1), X1g2_transmission_with_plastic_cover(:,2))
title('1g2 transmission with plastic cover')
ylim([0 100])

figure(8)
plot(X1g2_transmission_without_plastic_cover(:,1), X1g2_transmission_without_plastic_cover(:,2))
title('1g2 transmission without plastic cover')
ylim([0 100])

figure(9)
plot(X2g2_transmission_with_plastic_cover(:,1), X2g2_transmission_with_plastic_cover(:,2))
title('2g2 transmission with plastic cover')
ylim([0 100])

figure(10)
plot(X2g2_transmission_without_plastic_cover(:,1), X2g2_transmission_without_plastic_cover(:,2))
title('2g2 transmission without plastic cover')
ylim([0 100])

figure(11)
plot(X3g2_transmission_with_plastic_cover(:,1), X3g2_transmission_with_plastic_cover(:,2))
title('3g2 transmission with plastic cover')
ylim([0 100])

figure(12)
plot(X3g2_transmission_without_plastic_cover(:,1), X3g2_transmission_without_plastic_cover(:,2))
title('3g2 transmission without plastic cover')
ylim([0 100])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%

%PLOTTING SAMPLE SPECTRA
figure(13)
plot(X1g2_spectra_with_plastic_cover(:,1), X1g2_spectra_with_plastic_cover(:,2))
title('1g2 spectra with plastic cover')
ylim([0 4*10^4])

figure(14)
plot(X1g2_spectra_without_plastic_cover(:,1), X1g2_spectra_without_plastic_cover(:,2))
title('1g2 spectra without plastic cover')
ylim([0 4*10^4])

figure(15)
plot(X2g2_spectra_with_plastic_cover(:,1), X2g2_spectra_with_plastic_cover(:,2))
title('2g2 spectra with plastic cover')
ylim([0 4*10^4])

figure(16)
plot(X2g2_spectra_without_plastic_cover(:,1), X2g2_spectra_without_plastic_cover(:,2))
title('2g2 spectra without plastic cover')
ylim([0 4*10^4])

figure(17)
plot(X3g2_spectra_with_plastic_cover(:,1), X3g2_spectra_with_plastic_cover(:,2))
title('3g2 spectra with plastic cover')
ylim([0 4*10^4])

figure(18)
plot(X3g2_spectra_without_plastic_cover(:,1), X3g2_spectra_without_plastic_cover(:,2))
title('3g2 spectra without plastic cover')
ylim([0 4*10^4])