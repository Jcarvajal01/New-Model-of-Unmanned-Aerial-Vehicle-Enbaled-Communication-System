clc
clear all
close all

%Z=load('m50v1.mat');
%Urbanm50x=Z.m50v1(:,1); Urbanm50y=Z.m50v1(:,2);
Z=load('m100v1.mat');
Urbanm100x=Z.m100v1(:,1); Urbanm100y=Z.m100v1(:,2);
Z=load('m150v1.mat');
Urbanm150x=Z.m150v1(:,1); Urbanm150y=Z.m150v1(:,2);
Z=load('m200v1.mat');
Urbanm200x=Z.m200v1(:,1); Urbanm200y=Z.m200v1(:,2);

figure(1);

%h1=plot(Urbanm50x,Urbanm50y)
%hold on
h2=plot(Urbanm100x,Urbanm100y,'LineWidth', 1.5)
hold on
h3=plot(Urbanm150x,Urbanm150y,'LineWidth', 1.5)
h4=plot(Urbanm200x,Urbanm200y,'LineWidth', 1.5)

% Ajustar el tamaño y la fuente de los ejes
set(gca, 'FontSize', 14, 'fontname', 'times', 'LineWidth', 1);

% Etiquetas de los ejes
ylabel('Average transmit power (W)', 'FontSize', 14, 'fontname', 'times');
xlabel({'$m$'}, 'Interpreter', 'latex', 'FontSize', 14, 'fontname', 'times');
leg1 = legend([h2, h3, h4], {'100','150', '200'}, ...
              'FontSize',12,'fontname','times');
leg1.Title.String = '{\sigma =1/\rho}','Interpreter', 'latex';
leg1.ItemTokenSize = [10, 16];
leg1.Position = [0.73, 0.73, 0.15, 0.15];

grid on;
