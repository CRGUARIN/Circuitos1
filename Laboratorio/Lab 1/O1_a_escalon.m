% Vector tiempo
t = linspace(-5,5,1001);

% Escalón unitario
function y = u(t)
  y = (t >= 0);
end

% Escalón sobre el origen
u1 = u(t);

% Escalón desplazado dos unidades a la derecha
u2 = u(t-2);

% Escalón desplazado dos unidades a la izquierda
u3 = u(t+2);

% u(t)
subplot(3,1,1)
plot(t, u1, 'r', 'LineWidth', 2)
xlabel("Tiempo t")
ylabel("u(t)")
title("Escalón Unitario u(t)")
grid on
ylim([-0.5 1.5])
yline(0)
xline(0)

% u(t-2)
subplot(3,1,2)
plot(t, u2, 'LineWidth', 2)
xlabel("Tiempo t")
ylabel("u(t-2)")
title("Escalón Unitario u(t-2)")
grid on
ylim([-0.5 1.5])
yline(0)
xline(0)

% u(t+2)
subplot(3,1,3)
plot(t, u3, 'm', 'LineWidth', 2)
xlabel("Tiempo t")
ylabel("u(t+2)")
title("Escalón Unitario u(t+2)")
grid on
ylim([-0.5 1.5])
yline(0)
xline(0)

% 1) El desplazamiento de las dos ultimas señales se da en el eje del tiempo.

% 2) Cuando al argumento se le resta un valor, la función se desplaza hacia la
% derecha (se atrasa); cuando se le suma, se desplaza hacia la izquierda
% (se adelanta).


