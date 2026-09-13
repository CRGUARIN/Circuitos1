% Vector tiempo
t = linspace(0,2,1001);

% Señal original
f = sin(2*pi*t);

% Solicitar valor de A
A = input("Ingrese el valor de A entre -2 y 2: ");

while A < -2 || A > 2
    disp("El valor de A debe estar entre -2 y 2")
    A = input("Ingrese nuevamente el valor de A: ");
end

%señal y(t)
y = A*f;


if A > 1
    texto = "Amplificación sin reflexión";

elseif A > 0 && A < 1
    texto = "Atenuación sin reflexión";

elseif A < -1
    texto = "Amplificación con reflexión";

elseif A > -1 && A < 0
    texto = "Atenuación con reflexión";

elseif A == -1
    texto = "Solo reflexión de amplitud";

elseif A == 1
    texto = "Original";

elseif A == 0
    texto = "Señal nula";
end

% f(t)
subplot(2,1,1)
plot(t, f, 'r', 'LineWidth', 2)
xlabel("Tiempo t")
ylabel("f(t)")
title("Señal original f(t) = sin(2*pi*t)")
grid on
ylim([-2.5 2.5])
xlim([0 2])
yline(0,'k--')

% y(t)
subplot(2,1,2)
plot(t, y, 'm', 'LineWidth', 2)
xlabel("Tiempo t")
ylabel("y(t)")
title(texto)
grid on
ylim([-2.5 2.5])
xlim([0 2])
yline(0,'k--')