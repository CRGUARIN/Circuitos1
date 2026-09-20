# Informe de la Práctica 2

`main.tex` es la plantilla IEEE del informe final de Circuitos Resistivos --
Parte 1, con la misma estructura y autoría del preinforme. Incluye la tabla
de valores medidos de resistencia, los tres circuitos (paralelo, serie y
mixto) con su esquemático simulado, su ventana de resultados del punto de
operación, su fotografía de montaje, la tabla comparativa
Preinforme/Simulación/Montaje y las conclusiones de cada circuito.

Las imágenes ya están copiadas en la carpeta `img/` (a partir de las fotos
que ya tenías en `Informe/Montajes` y `Informe/Esquemáticos`), así que el
documento debería compilar sin mover nada más.

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

## Antes de entregar

1. Reemplace los campos rojos `[Completar]`: la tolerancia de cada resistor
   según su código de colores (revísela físicamente sobre cada resistor) y
   el rango esperado correspondiente, y el comentario sobre el montaje de
   la Figura 4.
2. Revise que las fotos de montaje (especialmente la de la Figura 4) muestren
   conexiones planas y sin cables tipo jumper entre componentes, como pide
   la guía; si no es así, considere rehacer esa foto.
3. Verifique los números de figura/tabla tras compilar, y ajuste el tamaño
   de las imágenes (`width=...`) si alguna queda demasiado grande o pequeña
   en el documento a dos columnas.
4. Agregue portada, encabezados o cualquier otro elemento adicional que pida
   su profesor para el envío del informe.
