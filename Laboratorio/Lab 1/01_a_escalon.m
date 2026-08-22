% 01_a_escalon.m
% Señales escalón unitario y desplazamientos temporales.

clear; close all; clc;

t = linspace(-5, 5, 2001);
u1 = double(t >= 0);
u2 = double(t - 2 >= 0);2
u3 = double(t + 2 >= 0);

figure('Name', 'Escalones unitarios');

subplot(3, 1, 1);
plot(t, u1, 'r', 'LineWidth', 2); grid on; ylim([-0.5 1.5]);
title('Escalón unitario u(t)'); xlabel('Tiempo t (s)'); ylabel('Amplitud');

subplot(3, 1, 2);
plot(t, u2, 'b', 'LineWidth', 2); grid on; ylim([-0.5 1.5]);
title('Escalón desplazado u(t - 2)'); xlabel('Tiempo t (s)'); ylabel('Amplitud');

subplot(3, 1, 3);
plot(t, u3, 'm', 'LineWidth', 2); grid on; ylim([-0.5 1.5]);
title('Escalón desplazado u(t + 2)'); xlabel('Tiempo t (s)'); ylabel('Amplitud');

% Respuestas:
% 1) El desplazamiento de u(t - 2) y u(t + 2) ocurre en el tiempo.
% 2) Un término t - t0 desplaza la señal t0 segundos a la derecha; un
%    término t + t0 la desplaza t0 segundos a la izquierda.
