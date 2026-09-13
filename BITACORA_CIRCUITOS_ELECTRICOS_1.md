# Bitácora de estudio — Circuitos Eléctricos 1

## Propósito

Este archivo conserva el contexto esencial de las conversaciones de estudio del curso. Está pensado para que el estudiante o un nuevo asistente pueda retomar el trabajo sin depender de una transcripción literal.

## Contexto del estudiante

- Estudiante de Ingeniería Electrónica en la Universidad de Antioquia.
- Curso actual: **Circuitos Eléctricos 1**, periodo 2026-2.
- Carpeta de trabajo: materiales del curso, incluyendo el libro *Fundamentos de circuitos eléctricos* (Sadiku, 5.ª edición), programación y recursos de teoría/laboratorio.

## Forma de trabajo acordada

- El estudiante hará preguntas a medida que estudie.
- Las explicaciones deben ser claras, paso a paso cuando haga falta, y orientadas a comprender el razonamiento físico y matemático, no solo a llegar al resultado.
- Esta bitácora se actualizará con decisiones, conceptos tratados, ejercicios relevantes, errores frecuentes y avances; no busca registrar el diálogo palabra por palabra.

## Estado actual

- Inicio de la sesión de estudio: 12 de septiembre de 2026.
- Tema que el estudiante empieza a estudiar: **análisis nodal, supernodos y análisis de mallas**.
- Aún no se han resuelto ejercicios ni se han registrado dudas específicas.

## Próximos temas de apoyo

1. Análisis nodal: elección de referencia, voltajes nodales y KCL.
2. Supernodos: fuentes de voltaje entre nodos no de referencia y ecuación de restricción.
3. Análisis de mallas: corrientes de malla, KVL y resistencias compartidas.
4. Casos con fuentes de corriente, incluyendo supermallas.

## Registro de avances y hallazgos

### Ejercicio de práctica 1 — Dos nodos con fuente entre nodos

- Topología: dos nodos respecto a tierra; (R_1) conecta el nodo 1 a tierra, (R_3) el nodo 2 a tierra, (R_2) conecta los nodos 1 y 2; (I_1) inyecta corriente de tierra al nodo 1 e (I_2) va del nodo 1 al nodo 2.
- Valores propuestos: (R_1=2\,\text{k}\Omega), (R_2=4\,\text{k}\Omega), (R_3=2\,\text{k}\Omega), (I_1=3\,\text{mA}), (I_2=1\,\text{mA}).
- Objetivo: hallar los voltajes nodales (v_1) y (v_2) mediante KCL. Convención recomendada: corrientes que salen de cada nodo como positivas.
- Planteamiento validado con conductancias: (G_1+G_2)v_1 - G_2v_2 = I_1-I_2 y -G_2v_1 + (G_2+G_3)v_2 = I_2, donde G_k=1/R_k.
- Forma matricial: [[G_1+G_2, -G_2], [-G_2, G_2+G_3]] [v_1, v_2]^T = [I_1-I_2, I_2]^T.
- Para los valores propuestos: G_1=G_3=0.5 mS y G_2=0.25 mS. Al multiplicar las ecuaciones por 4, queda 3v_1-v_2=8 y -v_1+3v_2=4 (voltajes en V).
- Revisión de resultados: el desarrollo de la segunda KCL llegó a G_2v_1-(G_2+G_3)v_2=-I_2, que es correcto. Al copiarla a la matriz faltó el signo menos ante (G_2+G_3). Forma equivalente más usual: -G_2v_1+(G_2+G_3)v_2=I_2. El sistema erróneo daba v_1=2 V y v_2=-2 V; el sistema correcto da v_1=3.5 V y v_2=2.5 V.
- Resolución de sistemas matriciales: A[v]=b significa el sistema de ecuaciones representado por las filas de A. Para dos incógnitas se puede usar eliminación de Gauss (sumar múltiplos de una fila para eliminar una incógnita) o la fórmula de la inversa/determinante. Para circuitos con muchos nodos, Gauss y las funciones de sistemas lineales de la calculadora son preferibles a calcular una inversa explícita.

### Ejercicio de práctica 2 — Fuente de voltaje conocida y fuente de corriente

- Circuito: fuente de voltaje Vs respecto a tierra en el nodo A; R1 entre A y B, fuente de corriente Is de tierra hacia B, R2 entre B y C y R3 entre C y tierra. La salida es Vo=Vc.
- Datos anotados: Vs=12 V, R1=1 kOhm, R2=4 kOhm y R3=3 kOhm. Se asume que el terminal positivo de Vs está en A, por tanto Va=12 V.
- Ecuación correcta del nodo B: Is+G1(Va-Vb)=G2(Vb-Vc), o equivalentemente (G1+G2)Vb-G2Vc=Is+G1Va. Al reordenar, G1Va no debe pasar al lado izquierdo con signo negativo.
- Ecuación correcta del nodo C: G2(Vb-Vc)=G3Vc, o G2Vb-(G2+G3)Vc=0.
- Conductancias verificadas: G1=1 mS, G2=0.25 mS, G3=0.3333 mS. Falta especificar Is para obtener Vo numérico.
- Dato completado: Is=4 mA. Sustituyendo Va=12 V, el sistema es 1.25Vb-0.25Vc=16 y 0.25Vb-0.5833Vc=0, usando mS, V y mA. Resultado: Vb=14 V y Vo=Vc=6 V. Comprobación: la fuente inyecta 4 mA en B; salen 2 mA hacia A y 2 mA hacia C.
- Ingreso en calculadora: se deben mantener unidades consistentes. Opción legible recomendada: conductancias en mS y corrientes en mA; ingresar (para x=Vb, y=Vc): 1.25, -0.25, 16; y luego 0.25, -0.583333, 0. En SI puro se ingresaría 0.00125, -0.00025, 0.016; y luego 0.00025, -0.000583333, 0. La pantalla mostraba 0.025 y 0.0583, que no corresponden a ninguna de las dos escalas y por eso da un resultado incorrecto.
- La calculadora puede mostrar residuos decimales muy pequeños porque G3=1/3 mS y G2+G3=7/12 mS son periódicos. Se aceptan como Vb aproximadamente 14 V y Vc aproximadamente 6 V; usar la fracción 7/12 o más cifras solo reduce el redondeo.

### Supernodos — idea clave y ejemplo

- Un supernodo se forma cuando una fuente ideal de voltaje conecta dos nodos que no son de referencia. No se reemplaza físicamente por un corto: la fuente sigue imponiendo su diferencia de potencial. El contorno del supernodo sirve para escribir KCL sin tener que conocer la corriente interna de la fuente.
- Siempre se requieren dos ecuaciones: (1) KCL para todas las ramas que cruzan el contorno externo y (2) la restricción de la fuente, con polaridad. Si una fuente de voltaje conecta un nodo con tierra, no hay supernodo: el voltaje de ese nodo queda conocido directamente.
- Ejemplo con fuente de 6 V: tomando el conductor inferior como referencia, Va=12 V; la fuente interna tiene positivo en B y negativo en C, así que Vb-Vc=6 V. KCL del supernodo B-C: (Vb-12)/6k + Vb/3k + (Vc-12)/12k + Vc/6k = 0. De allí 2Vb+Vc=12 y, junto con la restricción, Vb=6 V y Vc=Vo=0 V. La corriente Io por 3k es Vb/3k=2 mA hacia abajo.
- La corriente por la fuente interna se puede hallar solo después, aplicando KCL a B o C; no aparece en la KCL del supernodo porque es una corriente interna.
- Comprensión consolidada: puede pensarse como sumar las KCL individuales de B y C. La corriente desconocida de la fuente aparece con signos opuestos y se cancela; queda una única KCL para el contorno. Se complementa con la restricción Vb-Vc=6 V impuesta por la fuente, no por el procedimiento del supernodo.
- Procedimiento reusable para supernodos: elegir tierra y nombrar voltajes; detectar una fuente ideal de voltaje entre dos nodos no de referencia; rodear ambos nodos y la fuente; escribir una KCL con las ramas que cruzan el borde, excluyendo elementos internos; escribir la restricción de voltaje respetando polaridad; resolver con las demás KCL. Casos: fuente a tierra implica voltaje conocido y no requiere supernodo; fuente entre nodos no de referencia sí; fuentes en serie que unen varios nodos forman un supernodo extendido; fuente dependiente se trata igual, con una restricción que incluye su variable de control; una fuente de corriente no forma supernodo.
- Corriente por una fuente de voltaje: tras hallar los voltajes, se define una dirección de referencia para la corriente de la fuente y se aplica KCL en uno de sus nodos terminales. En el ejemplo, si i6 se define de B a C: (Vb-Va)/6k + Vb/3k + i6=0. Con Vb=6 V y Va=12 V resulta i6=-1 mA; la corriente física es 1 mA de C a B. El signo negativo solo indica dirección opuesta a la supuesta.

### Inicio de análisis de mallas (lazos)

- Método alternativo a nodos para circuitos planares: se asigna una corriente a cada malla elemental, normalmente todas en sentido horario, y se escribe KVL para cada una.
- En una resistencia exclusiva de una malla, la caída es R*i_k. En una resistencia compartida por las mallas k y j, la caída al recorrer la malla k es R*(i_k-i_j), porque las corrientes de malla atraviesan esa rama en sentidos opuestos.
- Para el circuito interactivo de dos mallas con una fuente Vs, R1 exclusiva de malla 1, R2 compartida y R3-R4 exclusivas de malla 2: (R1+R2)i1-R2i2=Vs y -R2i1+(R2+R3+R4)i2=0. La forma matricial conserva el mismo patrón que nodos: términos diagonales son suma de resistencias de la malla y los términos fuera de diagonal son el negativo de la resistencia compartida.
- Ejercicio propuesto de tres mallas: R1=1 kOhm, R2=2 kOhm, R3=3 kOhm, R4=4 kOhm, Vs=21 V y fuente de corriente de 5 mA hacia arriba (tal como aparece en el esquema). Se recomienda mantener las corrientes de malla horarias como están dibujadas; en la malla 3 la fuente fija i3=-5 mA, pues la dirección de la fuente es opuesta a la corriente horaria supuesta. Un valor negativo final de una corriente de malla solo indica que la corriente física circula en sentido contrario al elegido.
- Convención para resistores en mallas: aplicar la convención pasiva: el terminal por el que entra la corriente de referencia se marca positivo. Al recorrer KVL de + a - se tiene una caída -Ri; de - a +, una subida +Ri. En la práctica, si se recorren las mallas en el mismo sentido, una resistencia exclusiva aporta R*ik y una compartida aporta R*(ik-ij) en la ecuación de la malla k. Si el resultado es negativo, la dirección física es la opuesta y no se cambian ecuaciones retrospectivamente.
- Resultado verificado del ejercicio de tres mallas: i1=3 mA, i2=-1.5 mA e i3=-5 mA, para las direcciones horarias elegidas. El valor negativo de i2 indica 1.5 mA en sentido antihorario. Ecuaciones usadas: 6i1-2i2=21 y -2i1+6i2=-15, al usar kOhm, mA y V.

### Práctica de laboratorio 2 -- Preinforme

- Guía localizada: Laboratorio/Práctica 2/p02-Guía-CircuitosResistivos-Parte1.pdf.
- Entregable creado: carpeta Laboratorio/Práctica 2/latex con plantilla IEEE, figuras de los tres circuitos mediante circuitikz, tabla de resistores y campos pendientes para completar cálculos.
- Consulta delta--estrella y estrella--delta incorporada: un párrafo breve, ecuaciones de ambas transformaciones y el procedimiento simbólico para reducir el puente de la Figura 4.
- La guía exige fuente de 5 V y cinco resistores diferentes entre 330 Ohm y 4.7 kOhm. Antes de entregar, completar integrantes, valores seleccionados/medidos y cálculos numéricos.
- PDF compilado y revisado visualmente: Laboratorio/Práctica 2/latex/main.pdf. Tiene dos páginas en formato IEEE, con los diagramas y ecuaciones sin recortes ni advertencias de referencias. La plantilla se ajustó para evitar la dependencia opcional siunitx.
