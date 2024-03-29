# Thesis Template

This is a template for (Bachelor and Master) thesis at the [computer science department](https://www.informatik.tu-darmstadt.de) of the [Technical University of Darmstadt](https://www.tu-darmstadt.de).
It is based on TU Darmstadt's [corporate design](https://github.com/tudace/tuda_latex_templates) and extends it beyond a simple document class.

I will continuously update this template as I progress with my thesis, enhancing the template even further.

:warning: This template contains a thesis hallucinated by [ChatGPT](https://chat.openai.com). Do not cite or believe it in any way!

## Main Features
:heavy_check_mark: modern bibliography management with [BibLaTeX](https://www.ctan.org/pkg/biblatex) and [Biber](https://www.ctan.org/pkg/biber) <br>
:heavy_check_mark: intelligent referencing with [Cleveref](https://www.ctan.org/pkg/cleveref) <br>
:heavy_check_mark: sophisticated glossary and abbreviation management with [glossaries](https://www.ctan.org/pkg/glossaries) <br>
:heavy_check_mark: solid build system and CI pipeline powered by [arara](https://islandoftex.gitlab.io/arara) and [GitHub Actions](https://docs.github.com/actions)

## Getting Started
### Cloning
To use this template, simply go to the [repository](https://github.com/fdamken/thesis-template) and click on [use this template](https://github.com/fdamken/thesis-template/generate).
GitHub then guides you through the process of creating a repository with the same files and folders as this template.

Alternatively, you can use [Overleaf](https://www.overleaf.com), the online LaTeX editor (or your own ShareLaTeX instance, of course).
Simply [download this repository's content as a ZIP](https://github.com/fdamken/thesis-template/archive/refs/heads/main.zip) and upload the files directly to Overleaf.
Be aware that continuous integration **does not** work on Overleaf.

### First Steps
Now you can directly start filling the document with your own content.
A good starting point for this are the locations marked with `TODO`.
Most importantly, adjust the thesis title, author, and reviewers/supervisors in [`main.tex`](thesis/main.tex).
You can always execute `grep -r TODO` on the command line to list all `TODO`s.

### Compiling
To build the document, you can either use TeXStudio (the [`main.tex`](thesis/main.tex) contains [TeX magic comments](https://tex.stackexchange.com/a/84687) for choosing the correct software).
Make sure to run the “Glossary” tool to execute [bib2gls](https://www.ctan.org/pkg/bib2gls) (you can find it under “Tools” → “Glossary”).
Do not submit a document generated by TeXStudio!
Instead, run arara:

To build the thesis from the command line, run `arara main` in the [`thesis`](thesis) directory.
This will execute LuaLaTeX, Biber and bib2gls in order to generate a good-looking thesis.

## Detailed Information
This section contains various details on how the template works.
For instance, how to create and use abbreviations or reference bibliography.

### Abbreviations and Symbols
TODO

### Bibliography
TODO

### Referencing
TODO

### Build Notifications
It is possible to send the latest thesis version via various notification channels.
To configure them, refer to the [respective workflow](.github/workflows/build.yml).
The workflow already contains a pre-built [Telegram](https://telegram.org) notifier for which you have to set the secrets `TELEGRAM_TO` and `TELEGRAM_TOKEN` to the chat ID and bot API token, respectively.
You can do so in the [action secrets settings](https://github.com/fdamken/thesis-template/settings/secrets/actions).
