% Vector tiempo
t = linspace(-4,4,1001);

% Rampa sobre el orígen
r1 = r(t);

% Rampa desplazada dos unidades a la derecha
r2 = r(t-2);

% Rampa desplazada dos unidades a la izquierda
r3 = r(-t-2);

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
plot(t, r2, 'b', 'LineWidth', 2)
xlabel("Tiempo t")
ylabel("r(t-2)")
title("Rampa r(t-2)")
grid on
ylim([-1 5])
yline(0)
xline(0)

% r(-t-2)
subplot(3,1,3)
plot(t, r3, 'm', 'LineWidth', 2)
xlabel("Tiempo t")
ylabel("r(-t-2)")
title("Rampa r(-t-2)")
grid on
ylim([-1 5])
yline(0)
xline(0)

%{
1) r(t-2) = (t-2)u(t-2): el escalon se activa en t = 2. Por ello, la region
   donde la rampa es diferente de cero tambien se desplaza y queda para t >= 2.
2) En r(-t-2) el signo negativo de t genera una reflexion temporal. Por eso no
   es un desplazamiento simple: la rampa queda activa hacia la izquierda, para t <= -2.
%}

% Escalón unitario
function y = u(t)
  y = (t >= 0);
end

% Funcion rampa
function y = r(t)
  y = t.*u(t);
end
