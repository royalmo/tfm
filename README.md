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
sudo apt install texlive-full biber libpgf6
```

If you use a minimal TeX Live install (instead of `texlive-full`), make sure
Catalan support for Babel is installed, because `tfgitic.cls` requires both
English and Catalan metadata pages:

```sh
sudo apt install texlive-lang-spanish
```

If `sudo` is unavailable, you can install the package in user mode with
`tlmgr` (TeX Live 2023):

```sh
tlmgr init-usertree
tlmgr option repository https://ftp.math.utah.edu/pub/tex/historic/systems/texlive/2023/tlnet-final
tlmgr install babel-catalan hyphen-catalan
fmtutil-user --byfmt pdflatex
```

### Build using LaTeX

Easy!

```sh
make
```

This generates `thesis.pdf` in the repository root.

You can run `make redo` to generate a pdf even if one has already been created.

## Download PDF from GitHub

On every push to `main`, GitHub Actions runs the `Build Thesis PDF` workflow and
uploads a timestamped PDF artifact.

To download it:

1. Go to the **Actions** tab in this repository.
2. Open a recent `Build Thesis PDF` run.
3. Download the `thesis-<utc-timestamp>-<commit-sha>` artifact from the run summary.
