# Repository Guidelines

## Project Structure & Module Organization

This repository stores materials for *Circuitos Eléctricos 1*. Course references
live at the repository root, while lecture resources are organized under
`Teoría/Tema N/`. MATLAB/Octave laboratory work is under `Laboratorio/Lab N/`.
For example, `Laboratorio/Lab 1/01_a_escalon.m` contains the unit-step exercise,
and `Laboratorio/Lab 1/Indicaciones/` contains the corresponding lab guide.

Keep new work with its lab or theory topic. Use descriptive, ordered filenames
such as `02_b_nombre_del_ejercicio.m`; do not move supplied PDFs or images unless
their references are updated as well.

## Development and Verification Commands

There is no build system, linter, automated test suite, or CI configuration.
MATLAB scripts are compatible with GNU Octave, which is available locally.

```bash
octave --no-gui "Laboratorio/Lab 1/01_a_escalon.m"
octave --no-gui "Laboratorio/Lab 1/suma_02_a.m"
```

Run a modified script from the repository root and confirm that it completes
without errors and produces the expected plot. Scripts requiring `input()` must
be run interactively, for example: `octave --no-gui` followed by
`run('Laboratorio/Lab 1/01_c_exposinu.m')`.

## Coding Style & Naming Conventions

Write MATLAB/Octave code with four-space indentation inside control blocks and
functions. Follow the existing style: lower-case variable and helper names
(`t`, `u`, `r`), Spanish comments, and one logical operation per section. Put a
brief `%` comment before each signal definition or plot. Use UTF-8 so Spanish
accents render correctly. Quote shell paths because filenames contain spaces and
accented characters.

Prefer vectorized operations (for example, `y = (t >= 0)`) over loops when
defining signals. Keep plot labels, axis limits, and grids explicit when they
help compare signals.

## Testing Guidelines

For each changed `.m` file, run it in Octave and inspect the resulting figure:
check time shifts, amplitudes, labels, and axis bounds against the lab guide.
When adding a reusable function, exercise it with representative negative,
zero, and positive time values. No coverage target or test framework is
currently defined.

## Commit & Pull Request Guidelines

Recent commits use short Spanish, imperative summaries, e.g. `Agrega script
suma_02_a.m` and `Mover guías del Lab 1 a la subcarpeta Indicaciones`. Keep
commits focused and mention the lab/exercise affected. Before committing, review
`git status` and avoid including generated plots, editor backups, or large
binary files unless explicitly required. Pull requests should state the lab
scope, summarize the behavioral or document change, and include a screenshot
when a plot's appearance changed.
