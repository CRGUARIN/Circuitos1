% Vector tiempo
t = linspace(-4,4)

% Funcion Rampa
function y = u(t)
  y = (t >= 0);
end

function y = r(t)
  y = t.*u(t)
end

% Rampa sobre el orígen
r1 = r(t)

% Rampa desplazada dos unidades a la derecha
r2 = r(t-2)

% Rampa desplazada dos unidades a la izquierda
r3 = r(-t-2)

% r(t)
subplot(3,1,1)
plot(t, r1, 'r', 'LineWidth', 2)
xlabel("Tiempo t")
ylabel("r(t)")
title("Rampa r(t)")
grid on
ylim([-1 5])
yline(0)
xline(0)

% r(t-2)
subplot(3,1,2)
plot(t, r3, 'b', 'LineWidth', 2)
xlabel("Tiempo t")
ylabel("r(t-2)")
title("Rampa r(t-2)")
grid on
ylim([-1 5])
yline(0)
xline(0)

% r(-t-2)
subplot(3,1,3)
plot(t, r2, 'm', 'LineWidth', 2)
xlabel("Tiempo t")
ylabel("r(-t-2)")
title("Rampa r(-t-2)")
grid on
ylim([-1 5])
yline(0)
xline(0)

%{
1) Al momento de realizar un desplazamiento bajo un valor dado, este se da para toda la grafica, desplazando
   TODOS los puntos de la misma, incluidos aquellos en los que su valor es 0.
2) Porque al multiplicar el argumento por un signo - estamos realizando una reflexión sobre
   el eje y.
%}
