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
capturas que ya tenías en `Informe/Simulaciones` e `Informe/Montajes`), así
que el documento compila salvo por la foto de los resistores (ver pendientes).

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
TeX Live 2023) sin errores, generando un PDF de 4 páginas.

## Antes de entregar

1. **Foto de los resistores (Figura 1):** falta la foto de $R_1$, $R_2$ y
   $R_3$ mostrando el código de colores. Guárdela como
   `img/resistores.jpg` y reemplace el recuadro `[Completar: ...]` de la
   Figura 1 por:
   ```latex
   \includegraphics[width=0.85\linewidth]{resistores.jpg}
   ```
2. **Tabla I (valores medidos de resistencia):** confirme la tolerancia
   (color de la banda), el rango esperado y el valor medido exacto de
   $R_1$ y $R_3$ -- del cuaderno de mediciones solo se pudo leer con
   certeza $R_2=989~\Omega$ ($1\,\%$).
3. **Datos del montaje (Sección VII, Cuadro IV):** los voltajes de nodo y
   las corrientes de malla medidas se transcribieron de las notas
   manuscritas (`Informe/Desarrollo a mano/Mediciones_Montaje.jpg`).
   Revísense contra el original antes de entregar, en particular:
   - $i_1=4.82~\mathrm{mA}$ e $i_2=-0.51~\mathrm{mA}$ (referencia en $d$).
   - $i_1=4.51~\mathrm{mA}$ e $i_2=0.55~\mathrm{mA}$ (referencia en $c$).
   El cambio de signo de $i_2$ entre ambas mediciones se explica en el
   texto como un efecto de polaridad de las puntas del multímetro; ajuste
   esa explicación si en el laboratorio ocurrió algo distinto.
4. Revise los números de figura/tabla tras compilar y ajuste el tamaño de
   las imágenes (`width=...`) si alguna queda demasiado grande o pequeña.
5. Agregue portada, encabezados o cualquier otro elemento adicional que
   pida su profesor para el envío del informe.
