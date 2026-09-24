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

- **Resistores medidos (Tabla I):** los tres son de $1\,\%$ de tolerancia.
  $R_1=666~\Omega$, $R_2=989~\Omega$, $R_3=1949~\Omega$. Los tres midieron
  levemente por debajo de su valor nominal (entre $1$ y $3\,\%$), quedando
  justo fuera de su banda de tolerancia estricta -- se discute en el texto
  como un efecto menor de calibración del multímetro.
- **Foto de los resistores (Figura 1):** `img/resistores.jpg`, foto
  dedicada de $R_1$, $R_2$ y $R_3$ mostrando el código de colores de cada
  uno (también guardada en `Informe/Resistores_Practica3.jpg`).
- **Corrientes de malla medidas (Cuadro IV):** el signo de $i_2$ en la
  medición con referencia en $c$ se corrigió por la polaridad invertida de
  las puntas del multímetro en esa medición (confirmado por los autores),
  quedando $i_2=-0.51~\mathrm{mA}$ (referencia en $d$) e
  $i_2=-0.55~\mathrm{mA}$ (referencia en $c$).

## Antes de entregar

1. Revise los números de figura/tabla tras compilar y ajuste el tamaño de
   las imágenes (`width=...`) si alguna queda demasiado grande o pequeña,
   o si prefiere una foto de los resistores distinta a la del montaje.
2. Agregue portada, encabezados o cualquier otro elemento adicional que
   pida su profesor para el envío del informe.
