% 01_c_exposinu.m
% Exponencial causal y senoide causal con parámetros ingresados por usuario.

clear; close all; clc;

while true
    A = input('Ingrese A para exp(A*t) [0 < A <= 2]: ');
    if isscalar(A) && isreal(A) && isfinite(A) && A > 0 && A <= 2, break; end
    fprintf('Valor inválido. Intente de nuevo.\n');
end
while true
    B = input('Ingrese B para B*sin(2*pi*f*t) [-5 <= B <= 5]: ');
    if isscalar(B) && isreal(B) && isfinite(B) && B >= -5 && B <= 5, break; end
    fprintf('Valor inválido. Intente de nuevo.\n');
end
while true
    f = input('Ingrese f [0 < f <= 4]: ');
    if isscalar(f) && isreal(f) && isfinite(f) && f > 0 && f <= 4, break; end
    fprintf('Valor inválido. Intente de nuevo.\n');
end

t = linspace(-1, 2, 5001);
x1 = exp(A .* t) .* double(t >= 0);
x2 = B .* sin(2 * pi * f .* t) .* double(t >= 0);

figure('Name', 'Exponencial y senoide causales');

subplot(2, 1, 1);
plot(t, x1, 'r', 'LineWidth', 2); grid on;
title(sprintf('x_1(t) = e^{%.2ft}u(t)', A));
xlabel('Tiempo t (s)'); ylabel('Amplitud');

subplot(2, 1, 2);
plot(t, x2, 'm', 'LineWidth', 2); grid on;
title(sprintf('x_2(t) = %.2f sin(2\\pi %.2ft)u(t)', B, f));
xlabel('Tiempo t (s)'); ylabel('Amplitud');

% Respuestas:
% 1) A controla la rapidez de crecimiento de la exponencial para t >= 0.
% 2) f cambia el número de oscilaciones por segundo (periodo T=1/f); B
%    cambia los valores máximos y mínimos, sin alterar el periodo.
% 3) Cambiar f es un escalamiento temporal; cambiar B es un escalamiento
%    de amplitud (e incluye inversión vertical si B es negativo).
% 4) El escalón hace ambas señales causales: son cero para t < 0 y conservan
%    su expresión correspondiente para t >= 0.
