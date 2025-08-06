clc
clear
close all

Z=load('ka10.mat');
UAV_Ka10x = Z.Expression1(:,1);
UAV_Ka10y = Z.Expression1(:,2);
UAV_Ka10xdB=10*log10(UAV_Ka10x);
Z=load('ka20.mat');
UAV_Ka20x = Z.Expression1(:,1);
UAV_Ka20y = Z.Expression1(:,2);
UAV_Ka20xdB=10*log10(UAV_Ka20x);
Z=load('ka50.mat');
UAV_Ka50x = Z.Expression1(:,1);
UAV_Ka50y =  Z.Expression1(:,2);
UAV_Ka50xdB=10*log10(UAV_Ka50x);
Z=load('ka100.mat');
UAV_Ka100x = Z.Expression1(:,1);
UAV_Ka100y = Z.Expression1(:,2);
UAV_Ka100xdB=10*log10(UAV_Ka100x);
Z=load('ka150.mat');
UAV_Ka150x = Z.Expression1(:,1);
UAV_Ka150y = Z.Expression1(:,2);
UAV_Ka150xdB=10*log10(UAV_Ka150x);
Z=load('ka200.mat');
UAV_Ka200x =Z.Expression1(:,1);
UAV_Ka200y =Z.Expression1(:,2);
UAV_Ka200xdB=10*log10(UAV_Ka200x);

%h1 = plot(UAV_Ka10xdB, UAV_Ka10y, 'LineWidth', 1.5);
hold on
%h2 = plot(UAV_Ka20xdB, UAV_Ka20y, 'LineWidth', 1.5);
h3 = plot(UAV_Ka50xdB, UAV_Ka50y, 'LineWidth', 1.5);
h4 = plot(UAV_Ka100xdB, UAV_Ka100y, 'LineWidth', 1.5);
h5 = plot(UAV_Ka150xdB, UAV_Ka150y, 'LineWidth', 1.5);
h6 = plot(UAV_Ka200xdB, UAV_Ka200y, 'LineWidth', 1.5);

% Ajuste visual
set(gca, 'FontSize', 14, 'FontName', 'times', 'LineWidth', 1);

% Etiquetas
ylabel('Average transmit power (W)', 'FontSize', 14, 'FontName', 'times');
xlabel('$\kappa$ [dB]', 'Interpreter', 'latex', 'FontSize', 14, 'FontName', 'times');

% Leyenda
leg1 = legend([h3, h4, h5, h6], {'50','100','150','200'}, ...
              'FontSize', 12, 'FontName', 'times');
leg1.Title.String = 'Altitude[m]';
leg1.Title.Interpreter = 'latex';
leg1.ItemTokenSize = [10, 16];
leg1.Position = [0.73, 0.73, 0.15, 0.15];

% Grilla
grid on;