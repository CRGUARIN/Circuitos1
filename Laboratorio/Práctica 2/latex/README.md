# Preinforme de la Práctica 2

main.tex es una plantilla IEEE para el preinforme de Circuitos Resistivos --
Parte 1. Incluye la portada, tabla de resistores, consulta delta--estrella y
estrella--delta, y los tres circuitos de la guía dibujados con circuitikz.

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

1. Reemplace todos los campos rojos [Completar: ...].
2. Registre los cinco valores nominales y medidos de los resistores.
3. Complete los desarrollos numéricos y resultados de los tres circuitos.
4. Verifique que la consulta conserve un único párrafo breve, como pide la guía.
