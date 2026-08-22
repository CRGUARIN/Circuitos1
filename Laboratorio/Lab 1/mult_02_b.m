% Vector de tiempo:
t = linspace(-1, 4);

% Solicitar el valor de d:

d = input('Ingrese el valor de d, entre 1 y 3: ');



while d < 1 || d > 3

    disp('El valor de d debe estar entre 1 y 3')

    d = input('Ingrese nuevamente el valor de d: ');

end

% Señal f(t) = sin(2*pi*t):
f = sin(2 * pi * t);

% Señal g(t) = u(t) - u(t-d):
g = u(t) - u(t - d);

% Señal y(t) = f(t)*g(t):
y = f .* g;

% Señal f(t) = sin(2*pi*t)

subplot(3, 1, 1)
plot(t, f, 'b', 'LineWidth', 2)
xlabel('Tiempo t [s]')
ylabel('f(t)')
title('Señal f(t) = sin(2\pit)')
grid on
ylim([-1.5 1.5])
yline(0, 'k--')

% Señal g(t) = u(t) - u(t-d)

subplot(3, 1, 2)
plot(t, g, 'g', 'LineWidth', 2)
xlabel('Tiempo t [s]')
ylabel('g(t)')
title('Señal g(t) = u(t) - u(t-d)')
grid on
ylim([-0.5 1.5])
yline(0, 'k--')

% Señal y(t) = f(t)*g(t)

subplot(3, 1, 3)
plot(t, y, 'm', 'LineWidth', 2)
xlabel('Tiempo t [s]')
ylabel('y(t)')
title('Señal y(t) = f(t)g(t)')
grid on
ylim([-1.5 1.5])
yline(0, 'k--')

% Función escalón:
function y = u(t)
y = (t >= 0);
end

%{
1) La señal y(t) = f(t)g(t) permanece diferente de cero en el 
intervalo 0<=t<d, dado que f(t) está definida para todo el rango de
tiempo, sin embargo, g(t) vale 0 para los valores t<0 y
t>=d.Por tanto al multiplicar f(t) y g(t), la funcion solo se conserva
dentro del intervalo 0<=t<d, puesto que fuera de ese intervalo g(t)=0 y,
por tanto, el producto f(t)g(t) tambien se anula

2) La multiplicación por g(t) tiene como proposito limitar la función f(t)
a un intervalo especifico de tiempo. Esto se da por que g(t) toma el valor
de 0 para t<0 y t>=d y el valor de 1 para 0<=t<d. Por tanto, cuando g(t)=0,
la multiplicación f(t)g(t) haceque la señal se anule, contrario a cuando 
g(t)=1, que la señal conserva exactamente el valor de f(t). g(t) no 
modifica la señal sinusoidal, sinoque selecciona el rango de tiempo en el
que se muestra.