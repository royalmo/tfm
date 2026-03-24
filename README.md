# Master's Thesis Manuscript

This repository contains the LaTeX source for my master's thesis.

## Thesis abstract

TODO (write when more ready)

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
