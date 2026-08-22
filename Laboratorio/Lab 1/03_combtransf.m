% Solicitando valores de A, B, alpha y beta
disp("Todos los valores ingresados a continuación DEBEN estar entre [-2,2]");

Av = false;
while Av == false
    A = input("Ingrese el valor de A: ");
    if A <= 2 && A >= -2
        Av = true; % Valor de A aceptado
    else
        disp("Valor fuera de rango. Intente nuevamente.");
    end
end

Bv = false;
while Bv == false
    B = input("Ingrese el valor de B: ");
    if B <= 2 && B >= -2
        Bv = true; % Valor de B aceptado
    else
        disp("Valor fuera de rango. Intente nuevamente.");
    end
end

alphav = false;
while alphav == false
    alpha = input("Ingrese el valor de alpha: ");
    if alpha <= 2 && alpha >= -2
        alphav = true; % Valor de alpha aceptado
    else
        disp("Valor fuera de rango. Intente nuevamente.");
    end
end

betav = false;
while betav == false
    beta = input("Ingrese el valor de beta: ");
    if beta <= 2 && beta >= -2
        betav = true; % Valor de beta aceptado
    else
        disp("Valor fuera de rango. Intente nuevamente.");
    end
end

% Vector tiempo
t = linspace(-10,10,5000);

% Graficando las transformaciones
figure

% Función original
x0 = x(t);
subplot(3,2,1)
plot(t, x0, 'LineWidth', 1.5, 'Color', 'm');
axis padded
xlabel('Tiempo (s)');
ylabel('Amplitud');
title('Señal original x(t)');
grid on;

% Desplazamiento en el tiempo
x1 = x(t-beta);
subplot(3,2,2)
plot(t, x1, 'LineWidth', 1.5, 'Color', 'r');
axis padded
xlabel('Tiempo (s)');
ylabel('Amplitud');
title(sprintf('Desplazamiento temporal: beta = %.2f', beta));
grid on;

% Escalamiento en el tiempo
x2 = x(alpha*t-beta);
subplot(3,2,3)
plot(t, x2, 'LineWidth', 1.5, 'Color', 'b');
axis padded
xlabel('Tiempo (s)');
ylabel('Amplitud');
title(sprintf('Escalamiento temporal: alpha = %.2f', alpha));
grid on;

% Escalamiento en la amplitud
x3 = A*x2;
subplot(3,2,4)
plot(t, x3, 'LineWidth', 1.5, 'Color', 'y');
axis padded
xlabel('Tiempo (s)');
ylabel('Amplitud');
title(sprintf('Escalamiento de amplitud: A = %.2f', A));
grid on;

% Desplazamiento en la amplitud
y = x3 + B;
subplot(3,2,5)
plot(t, y, 'LineWidth', 1.5);
axis padded
xlabel('Tiempo (s)');
ylabel('Amplitud');
title(sprintf('Señal final y(t): A = %.2f, B = %.2f', A, B));
grid on;

% Escalón unitario
function y = u(t)
    y = (t >= 0);
end

% Función rampa
function y = r(t)
    y = t .* u(t);
end

% Señal x(t)
function x = x(t)
    x = -u(t+3) - r(t+2) + 5*r(t+1) ...
        - 8*r(t) + 5*r(t-1) - r(t-2) + u(t-3);
end
