% 01_b_rampa.m
% Señal rampa y transformaciones temporales.

clear; close all; clc;

t = linspace(-4, 4, 2001);
r1 = t .* double(t >= 0);
r2 = (t - 2) .* double(t - 2 >= 0);
r3 = (-t - 2) .* double(-t - 2 >= 0);

figure('Name', 'Rampas');

subplot(3, 1, 1);
plot(t, r1, 'r', 'LineWidth', 2); grid on; ylim([-1 5]);
title('Rampa r(t)'); xlabel('Tiempo t (s)'); ylabel('Amplitud');

subplot(3, 1, 2);
plot(t, r2, 'b', 'LineWidth', 2); grid on; ylim([-1 5]);
title('Rampa desplazada r(t - 2)'); xlabel('Tiempo t (s)'); ylabel('Amplitud');

subplot(3, 1, 3);
plot(t, r3, 'm', 'LineWidth', 2); grid on; ylim([-1 5]);
title('Rampa reflejada y desplazada r(-t - 2)'); xlabel('Tiempo t (s)'); ylabel('Amplitud');

% Respuestas:
% 1) r(t - 2) vale (t - 2)u(t - 2). Al sustituir t por t - 2 se desplazan
%    tanto la recta como el escalón; por eso la señal comienza en t = 2.
% 2) En r(-t - 2), el signo negativo multiplica todo el argumento y produce
%    una reflexión temporal. Después, el término -2 sitúa el quiebre en t=-2,
%    por lo que no equivale al desplazamiento de r(t - 2).
