clc
clear all
close all

% Carga del archivo .mat

Z = load('2UAV.mat');
UAV2x = Z.Expression1(:,1);
UAV2y = Z.Expression1(:,2);
Z = load('4UAV.mat');
UAV4x = Z.Expression1(:,1);
UAV4y = Z.Expression1(:,2);
Z = load('8UAV.mat');
UAV8x = Z.Expression1(:,1);
UAV8y = Z.Expression1(:,2);
window_size = 10; % Tamaño de la ventana de suavizado
UAV8y_smooth = smooth(UAV8y, window_size, 'moving'); % Suavizado con media móvil


h1 = plot(UAV2x, UAV2y, 'LineWidth', 1.5);
hold on;
h2 = plot(UAV4x, UAV4y, 'LineWidth', 1.5);
h3 = plot(UAV8x, UAV8y_smooth, 'LineWidth', 1.5);

% Ajuste visual
set(gca, 'FontSize', 14, 'FontName', 'times', 'LineWidth', 1);

% Etiquetas
ylabel('Average transmit power (W)', 'FontSize', 14, 'FontName', 'times');
xlabel('$m$', 'Interpreter', 'latex', 'FontSize', 14, 'FontName', 'times');

% Leyenda
leg1 = legend([ h1, h2, h3], {'2','4','8'}, ...
              'FontSize', 12, 'FontName', 'times');
leg1.Title.String = 'Number of UAVs';
leg1.Title.String = 'Number of UAVs','Interpreter', 'latex';
leg1.ItemTokenSize = [10, 16];
leg1.Position = [0.7, 0.53, 0.15, 0.15];
% Grilla
grid on;
