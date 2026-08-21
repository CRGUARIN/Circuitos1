%Verificador de A

av = false;
while av == false

 a = input("Ingrese el valor de la constante de la exponencial\nen el rango establecido 0 < a <= 2: ");

 if a <= 2 && a > 0

   av = true;

  else

   disp("El valor introducido no está en el rango válido");

 endif

endwhile


%Verificador de B

bv = false;
while bv == false

 b = input("Ingrese el valor de la amplitud\nen el rango establecido -5 <= b <= 5: ");

 if b <= 5 && b >= -5

   bv = true;

  else

   disp("El valor introducido no está en el rango válido");

 endif

endwhile


% Verificador de f

fv = false;
while fv == false

 f = input("Ingrese el valor de la frecuencia\nen el rango establecido 0 < f <= 4: ");

 if f <= 4 && f > 0

   fv = true;

  else

   disp("El valor introducido no está en el rango válido");

 endif

endwhile

d = linspace(-1,2,5000)

% Escalón unitario
function y = u(t)
  y = (t >= 0);
end

% Definiendo x1
function y = x1(t, a)
  y = exp(a*t).*u(t)
end

x_1 = x1(d, a);

subplot(2,1,1)
plot(d, x_1, 'r', 'LineWidth', 2)
xlabel("Tiempo t")
ylabel("e^At*u(t))")
title("e^At*u(t)")
grid on
ylim([-1 5])
yline(0)
xline(0)

%Definiendo x2
function y=x2 (b,t,f)
  y=b*sin(2*pi*f*t).*u(t)
 end

x_2= x2(f,b,d)

subplot(2,1,2)
plot(d, x_2, 'm', 'LineWidth', 2)
xlabel("Tiempo t")
ylabel("b*sin(2*pi*f*t)*u(t)")
title("b*sin(2*pi*f*t)*u(t)")
grid on
ylim([-10,10])
yline(0)
xline(0)


%{
1) La constante de le exponencial determina que tan rapido crece la función.
Siempre sera creciente dado que el rango esta definido unicamente para valores positivos.

2)La frecuencia altera la cantidad de oscilaciones que "caben" en el mismo intervalo de tiempo
  aumentando así el periodo de la función (ya que T=1/f) mientras que al cambiar la amplitud se puede observar
  como "aumenta el rango vertical" de la función

3)La frecuencia, al estar en el argumento (y comprimir o expandir horizontalmente la función) decimos que es un escalamiento
  en el tiempo

3)


