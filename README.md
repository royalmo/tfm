# Master's Thesis Manuscript

This repository contains the LaTeX source for my master's thesis.

## Thesis abstract

Autonomous systems often operate under multiple objectives that cannot be
naturally reduced to a single scalar cost. This is especially true in
autonomous driving, where safety, rule compliance, lane keeping, and
progress towards a destination must be prioritized differently depending
on the situation. This thesis studies that problem through games of
ordered preference, a game-theoretic framework in which each agent ranks
its objectives lexicographically.

The thesis focuses on three aspects required for the practical use of this
framework. First, it develops \emph{lexicographic IBR over time}, an
approximate receding-horizon solution method that exploits temporal
continuity to reduce the computational burden of solving games of ordered
preference while preserving the qualitative influence of preference order
on behavior. Results in simulated traffic scenarios show substantial
reductions in compilation and solution times relative to the baseline
formulation, especially as the number of preference levels increases.
Second, it formulates the inverse problem of estimating the preference
order of other agents from observations, highlighting the need to move
beyond the complete-information assumption common in trajectory games.
Third, it introduces Duckietown as a low-cost robotic platform for moving
towards experimental validation under sensing noise, actuation errors, and
other real-world imperfections.

Taken together, the thesis shows that games of ordered preference provide
a promising framework for modelling interactive decision making with
prioritized objectives, and that receding-horizon approximations can make
their use considerably more tractable. At the same time, it identifies
preference-order estimation and broader sim-to-real validation as
essential directions for future work.

## Repository structure

- `include/`: custom LaTeX class and template utilities.
- `chapters/`: chapter-by-chapter thesis content.
- `images/`: local images.
- `misc/`: bibliography and extra LaTeX snippets.
- `thesis.tex`: main manuscript entry point.
- `Makefile`: PDF build commands.

## Build

Generate the PDF locally, or download it from GitHub Actions artifacts or the
releases page.

### Installation (linux)

Simply install latex and other packages. If I'm not missing anything:

```sh
sudo apt install texlive-full biber libpgf6 texlive-lang-spanish
```

### Build using LaTeX

Easy!

```sh
make
```

This generates `thesis.pdf` in the repository root.

You can run `make redo` to generate a pdf even if one has already been created.
