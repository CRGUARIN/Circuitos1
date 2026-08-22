% Verificador de A
av = false;
while ~av
    a = input("Ingrese el valor de la constante de la exponencial\nen el rango establecido 0 < A <= 2: ");
    if a > 0 && a <= 2
        av = true;
    else
        disp("El valor introducido no está en el rango válido");
    end
end

% Verificador de B
bv = false;
while ~bv
    b = input("Ingrese el valor de la amplitud\nen el rango establecido -5 <= B <= 5: ");
    if b >= -5 && b <= 5
        bv = true;
    else
        disp("El valor introducido no está en el rango válido");
    end
end

% Verificador de f
fv = false;
while ~fv
    f = input("Ingrese el valor de la frecuencia\nen el rango establecido 0 < f <= 4: ");
    if f > 0 && f <= 4
        fv = true;
    else
        disp("El valor introducido no está en el rango válido");
    end
end

% Vector de tiempo
d = linspace(-1,2,5000);

% Señal exponencial
x_1 = x1(d,a);
subplot(2,1,1)
plot(d,x_1,'r','LineWidth',2)
xlabel("Tiempo t")
ylabel("e^{At}u(t)")
title("e^{At}u(t)")
grid on
ylim([-1,max(x_1)+1])
yline(0)
xline(0)

% Señal sinusoidal
x_2 = x2(b,d,f);
subplot(2,1,2)
plot(d,x_2,'m','LineWidth',2)
xlabel("Tiempo t")
ylabel("Bsin(2\pi ft)u(t)")
title("Bsin(2\pi ft)u(t)")
grid on
ylim([-10,10])
yline(0)
xline(0)

%{
1) La constante de la exponencial determina qué tan rápido crece la función.
   Siempre será creciente dado que el rango está definido únicamente para
   valores positivos.

2) La frecuencia altera la cantidad de oscilaciones que caben en el mismo
   intervalo de tiempo y, al aumentarla, disminuye el periodo (T = 1/f). Al
   cambiar la amplitud, aumenta o disminuye el rango vertical de la señal.

3) La frecuencia genera un escalamiento en el tiempo, pues está en el
   argumento de la sinusoidal. B genera un escalamiento en amplitud.

4) El escalón unitario hace que ambas señales sean cero para t < 0; por tanto,
   las señales son causales y se activan desde t = 0.
%}

% Escalón unitario
function y = u(t)
    y = (t >= 0);
end

% Señal exponencial
function y = x1(t,a)
    y = exp(a*t).*u(t);
end

% Señal sinusoidal
function y = x2(b,t,f)
    y = b*sin(2*pi*f*t).*u(t);
end
