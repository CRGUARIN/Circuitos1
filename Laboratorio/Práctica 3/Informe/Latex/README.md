# Informe de la Práctica 3

`main.tex` es la plantilla IEEE del informe final de Circuitos Resistivos --
Parte 2, con la misma estructura y autoría del preinforme. A partir de los
resultados teóricos del preinforme (análisis nodal y de mallas, referencia en
el nodo `d`), se agregan la simulación en LTspice y el montaje físico en
protoboard, repitiendo la toma de datos con la referencia de tierra en el
nodo `d` y luego en el nodo `c`, para verificar experimentalmente que los
voltajes de nodo cambian con la referencia mientras que las caídas de tensión
y las corrientes de rama no.

Las imágenes ya están copiadas en la carpeta `img/` (a partir de las fotos y
capturas que ya tenías en `Informe/Simulaciones` e `Informe/Montajes`), y el
documento compila completo, sin campos `[Completar]` pendientes.

## Dependencias en Arch Linux

Instale las colecciones necesarias con:

    sudo pacman -S texlive-latex texlive-pictures \
      texlive-publishers texlive-fontsrecommended texlive-langspanish \
      texlive-binextra

- texlive-publishers aporta la clase IEEEtran.
- texlive-fontsrecommended aporta las métricas de Times requeridas por IEEEtran.
- texlive-pictures aporta circuitikz.
- texlive-langspanish aporta el idioma español para babel.
- texlive-binextra aporta latexmk.

## Compilación

Desde esta carpeta ejecute:

    latexmk -pdf main.tex

El PDF resultante será main.pdf. Para limpiar archivos auxiliares:

    latexmk -c

El documento fue compilado y verificado en este entorno (Ubuntu 24.04 +
TeX Live 2023) sin errores, generando un PDF de 5 páginas.

## Datos confirmados

- **Fuente $v_2$:** $6~\mathrm{V}$ (la guía indica $5~\mathrm{V}$; el grupo
  usó $6~\mathrm{V}$ en preinforme, simulación y montaje).
- **Resistores medidos (Tabla I):** $R_1=666~\Omega$, $R_2=989~\Omega$,
  $R_3=1949~\Omega$ (1 % de tolerancia; los tres quedan levemente por debajo
  de su banda). Con estos valores la teoría da $i_1=4.523$ mA,
  $i_2=-0.520$ mA, $v_b=4.987$ V y $v_c=-1.013$ V.
- **Montaje, referencia en $d$:** $v_a=8.00$, $v_b=4.99$, $v_c=-0.69$ V
  (lectura confirmada, tratada como atípica), $i_1=4.82$ mA (primera medida,
  confirmada y tratada como atípica), $i_2=-0.51$ mA.
- **Montaje, referencia en $c$:** $v_a=9.00$, $v_b=5.99$, $v_d=1.00$ V,
  $i_1=4.51$ mA, $i_2=-0.55$ mA (signo corregido por puntas invertidas).
- **Simulación:** esquemáticos con el símbolo de tierra visible en `img/esquematico_ref_d.png`
  y `img/esquematico_ref_c.png` (copias en `Informe/Simulaciones`).

## Estructura según la guía

- Tabla I: "Valores medidos de resistencia" + Figura 1 (foto resistores).
- Figura 3: esquemático y punto de operación con referencia en $d$ en una sola figura.
- Tabla II: "Voltajes de nodo y corrientes de malla -- referencia nodo d"
  (preinforme, simulación, montaje).
- Sección VIII: LVK y LCK con datos medidos (numeral 4).
- Tabla III: "Voltajes de nodo con diferentes referencias" (numeral 5).

## Antes de entregar

1. Revise los números de figura/tabla tras compilar y ajuste el tamaño de
   las imágenes (`width=...`) si alguna queda demasiado grande o pequeña,
   o si prefiere una foto de los resistores distinta a la del montaje.
2. Agregue portada, encabezados o cualquier otro elemento adicional que
   pida su profesor para el envío del informe.
