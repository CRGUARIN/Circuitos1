# AGENTS.md

This is **not a code repository**. It is a personal document store for a university course
(Circuitos Eléctricos 1, Universidad de Antioquia). There is no source code, build, test,
lint, or CI — do not look for or invent any of those.

## Layout

- `Teoría/` — lecture slides, grouped by topic (`Teoría/Tema 1/`).
- `Laboratorio/` — lab guides, grouped by lab (`Laboratorio/Lab 1/`).
- Root — course schedule, textbook PDF (`Fundamentos de circuitos eléctricos...sadiku.pdf`, ~11 MB),
  and a resistor color-code image.

## Gotchas

- All files are PDFs/images with **Spanish accents and spaces** in their names
  (e.g. `Teoría/Tema 1/T1.1 - Sistemas y Señales.pdf`). Always quote paths in shell commands.
  `git ls-files` prints them percent/octal-escaped because `core.quotepath` is not set.
- Large binary files are tracked in git; do not add more large binaries unnecessarily.
- No `.gitignore` exists. Remote is `CRGUARIN/Circuitos1.git`, default branch `main`.
