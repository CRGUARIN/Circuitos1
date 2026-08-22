% 03_combtransf.m
% Punto 3: y(t) = A*x(alpha*t - beta) + B.
% x(t) = -u(t+3) - r(t+2) + 5r(t+1) - 8r(t) + 5r(t-1)
%        - r(t-2) + u(t-3), con r(t) = t*u(t).

clear; close all; clc;

while true
    A = input('Ingrese A en el rango [-2, 2]: ');
    if isscalar(A) && isreal(A) && isfinite(A) && A >= -2 && A <= 2, break; end
    fprintf('Valor inválido. A debe estar entre -2 y 2.\n');
end
while true
    B = input('Ingrese B en el rango [-2, 2]: ');
    if isscalar(B) && isreal(B) && isfinite(B) && B >= -2 && B <= 2, break; end
    fprintf('Valor inválido. B debe estar entre -2 y 2.\n');
end
while true
    alpha = input('Ingrese alpha en el rango [-2, 2]: ');
    if isscalar(alpha) && isreal(alpha) && isfinite(alpha) && alpha >= -2 && alpha <= 2, break; end
    fprintf('Valor inválido. alpha debe estar entre -2 y 2.\n');
end
while true
    beta = input('Ingrese beta en el rango [-2, 2]: ');
    if isscalar(beta) && isreal(beta) && isfinite(beta) && beta >= -2 && beta <= 2, break; end
    fprintf('Valor inválido. beta debe estar entre -2 y 2.\n');
end

% Intervalo amplio para observar cada transformación.
t = linspace(-12, 12, 12001);
u = @(z) double(z >= 0);
r = @(z) z .* u(z);
x = @(z) -u(z + 3) - r(z + 2) + 5*r(z + 1) - 8*r(z) ...
         + 5*r(z - 1) - r(z - 2) + u(z - 3);

% Orden: desplazamiento temporal, escalamiento temporal, escalamiento de
% amplitud y desplazamiento de amplitud. La última señal es y(t).
x_original = x(t);
x_desplazada_t = x(t - beta);
x_escalada_t = x(alpha .* t - beta);
x_escalada_a = A .* x_escalada_t;
y = x_escalada_a + B;

figure('Name', 'Combinación de transformaciones', 'Color', 'w');

subplot(5, 1, 1);
plot(t, x_original, 'k', 'LineWidth', 1.7); grid on; xlim([-8 8]);
title('1. Señal original x(t)');
xlabel('Tiempo t (s)'); ylabel('x(t)');

subplot(5, 1, 2);
plot(t, x_desplazada_t, 'k', 'LineWidth', 1.7); grid on; xlim([-8 8]);
title(sprintf('2. Desplazamiento temporal: x(t - %.3g)', beta));
xlabel('Tiempo t (s)'); ylabel('x(t - beta)');

subplot(5, 1, 3);
plot(t, x_escalada_t, 'k', 'LineWidth', 1.7); grid on; xlim([-8 8]);
title(sprintf('3. Escalamiento temporal: x(%.3gt - %.3g)', alpha, beta));
xlabel('Tiempo t (s)'); ylabel('x(alpha*t - beta)');

subplot(5, 1, 4);
plot(t, x_escalada_a, 'k', 'LineWidth', 1.7); grid on; xlim([-8 8]);
title(sprintf('4. Escalamiento de amplitud: %.3g x(%.3gt - %.3g)', A, alpha, beta));
xlabel('Tiempo t (s)'); ylabel('A x(alpha*t - beta)');

subplot(5, 1, 5);
plot(t, y, 'k', 'LineWidth', 1.7); grid on; xlim([-8 8]);
title(sprintf('5. Señal final: y(t) = %.3g x(%.3gt - %.3g) + %.3g', A, alpha, beta, B));
xlabel('Tiempo t (s)'); ylabel('y(t)');
