% Vector de tiempo:
t = linspace(-2, 2);


% Señales:
f1 = f(t);
y1 = f(-t);


% Señal f(t) 
subplot(2, 1, 1)
plot(t, f1, 'b', 'LineWidth', 2)
xlabel('Tiempo t [s]')
ylabel('f(t)')
title('Señal f(t) = e^{-t}u(t)')
grid on
ylim([-0.5 1.5])
yline(0, 'k--')

% Señal y(t) = f(-t)
subplot(2, 1, 2)
plot(t, y1, 'r', 'LineWidth', 2)
xlabel('Tiempo t [s]')
ylabel('y(t)')
title('Señal y(t) = f(-t)')
grid on
ylim([-0.5 1.5])
yline(0, 'k--')


% función escalón
function y = u(t)
y = (t >= 0)

end

% función f(t)
function y = f(t)
y = exp(-t) .* u(t)

end

%{
La reflexión temporal de una exponencial causal deja de ser causal porque,
al reemplazar t por -t, la señal se invierte con respecto al eje vertical.
Originalmente la señal f(t) es causal debido a que el escalón unitario
hace que su valor sea cero para todo t<0, por lo que la señal existe a
a partir de t=0. Sin embargo, la reflexión provoca que la señal sea
diferente de cero unicamente para los valores t<=0. Es decir que toda la
parte que inicialmente se encontraba a la derecha del origen, pasó a
ubicarse a la izquierda 
%}
