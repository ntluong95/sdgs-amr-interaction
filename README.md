# Best Practice to use
* Run Python code only: Go with Jupyter Notebook
* Run R code only: Go with Quarto document
* Write the manuscript in Quarto document, with `mystmd` adjustment in order to render properly

Step 1: run `poetry install` to active python virtual environment and installing packages (may need to set in project for poetry)
Step 2: run `Select Python interpreter` to choose Python version from .venv. By default, Positron should recognize the Python to use for knitr version later


# Notebooks Now! Submission Template for Myst

[![Made with MyST](https://img.shields.io/badge/made%20with-myst-orange)](https://mystmd.org)
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/Notebooks-Now/submission-myst-full/HEAD?labpath=notebooks/data-screening.ipynb)

This submission template is for a markdown-based publication with additional supporting notebook and markdown files, as well as supporting data, bibliography, and MyST build configuration.

## Source files

The primary source file for this template is a MyST markdown article. This file may reference notebook cells from other sub-articles to use the output of these cells as figures. It may also reference content from other markdown sub-articles. All of these supplementary source notebooks/articles should be saved in the `notebooks/` folder. It also contains MyST blocks tagged in their metadata as `"part": "abstract"`, or `"part": "availability"` - these cells will be extracted from the document and included as the specified part in the built output.

## Supporting material

### Supplementary data

By convention, all data should be saved in `data/` directory. There is nothing magic about this directory; references to your data from your notebook must still specify the correct relative path.

### Supplementary images

Similar to the `data/` directory, images for figures should be specified in `images/` directory.

### Bibliography

Bibliography entries may be specified two ways, both described in the [MyST docs](https://mystmd.org/guide/citations). They may be listed explicitly in BibTeX format, by convention in the file `references.bib`, and referenced by key using a `cite` MyST role. They may also be specified as inline DOI links. These do not require full bibliographic information; the data is fetched implicitly on build from the DOI.

## MyST configuration

A `myst.yml` file must be provided to configure notebook metadata and exports. This includes authors, affiliations, licenses, keywords, and [much more](https://mystmd.org/guide/frontmatter).

## Building output artifacts

To build PDF/JATS output from your source data, you must have the MyST Markdown CLI installed

```bash
npm install -g mystmd
```

Then build all exports defined in the `myst.yml` file:

```bash
myst build --all
```

# Notebooks Now! Submission Template for Quarto

This submission template is for a markdown-based publication with additional supporting notebook and markdown files, as well as supporting data, bibliography, and Quarto build configuration. It is based upon a new type of project in Quarto, Manuscripts. 

Get started with Quarto and Manuscript projects here: <https://quarto.org/docs/manuscripts/>.

## Source files

The primary source file for this template is a Quarto markdown article. This file may embed notebook cells from other sub-articles to use the output of these cells as figures. It may also reference content from other markdown sub-articles. All of these supplementary source notebooks/articles should be saved in the notebooks/ folder. 

## Supporting material

### Supplementary data

By convention, all data should be saved in `data/` directory. There is nothing magic about this directory; references to your data from your notebook must still specify the correct relative path.

### Supplementary images

Similar to the `data/` directory, images for figures should be specified in `images/` directory.

### Bibliography

Bibliography entries may be specific in the document as described in the [Quarto documentation](https://quarto.org/docs/authoring/footnotes-and-citations.html#bibliography-files). 

## Quarto configuration

Configuration for the example is provided by the Quarto project file, `_quarto.yml`, and the YAML block (front matter) that appears with the article markdown document.

## Building output artfiacts

To build PDF/JATS output from your source data, you must have the Quarto CLI installed - you can download or learn about installation at <https://quarto.org/docs/download/>

Then render the article using

```
quarto render
```
