
% Vector de tiempo:
t = linspace(-2, 6);



x1 = u(t);
x2 = 2 * u(t - 2);
x3 = -3 * u(t - 4);
y  = x1 + x2 + x3;


% Señal x1(t) = u(t)
subplot(4, 1, 1)
plot(t, x1, 'b', 'LineWidth', 2)
xlabel('Tiempo t [s]')
ylabel('x_1(t)')
title('Señal x_1(t) = u(t)')
grid on
ylim([-0.5 1.5])
yline(0, 'k--')

% Señal x2
subplot(4, 1, 2)
plot(t, x2, 'g', 'LineWidth', 2)
xlabel('Tiempo t [s]')
ylabel('x_2(t)')
title('Señal x_2(t) = 2u(t-2)')
grid on
ylim([-0.5 2.5])
yline(0, 'k--')

% Señal x3(t) = -3u(t-4)
subplot(4, 1, 3)
plot(t, x3, 'r', 'LineWidth', 2)
xlabel('Tiempo t [s]')
ylabel('x_3(t)')
title('Señal x_3(t) = -3u(t-4)')
grid on
ylim([-3.5 0.5])
yline(0, 'k--')

% Señal y(t) = x1(t) + x2(t) + x3(t)
subplot(4, 1, 4)
plot(t, y, 'm', 'LineWidth', 2)
xlabel('Tiempo t [s]')
ylabel('y(t)')
title('Señal y(t) = x_1(t) + x_2(t) + x_3(t)')
grid on
ylim([-1.5 3.5])
yline(0, 'k--')

% función escalón 
function y = u(t)
y =(t >= 0)

end