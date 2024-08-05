# Analysis of Vacuum Fluctuations and the Fine Structure Constant

[![RStudio](https://img.shields.io/badge/RStudio-75AADB.svg?logo=data:image/png;base64,...)]()

This repository contains an exploratory analysis investigating a potential link between laser-induced vacuum fluctuations (as observed in the documentary "Everything and Nothing") and the fine structure constant (α), a fundamental constant in physics.

## Project Overview

In the documentary "Everything and Nothing: The Astonishing Science of Empty Space," an experiment is described where lasers induce measurable fluctuations in a vacuum. The reported numerical values, being close to 1/137, raise the intriguing question of whether these fluctuations might be related to the fine structure constant.

This project aims to examine this hypothesis using statistical methods. We apply bootstrapping to estimate the mean and confidence intervals of the measurements. Additionally, we employ both parametric (t-test) and non-parametric (Wilcoxon signed-rank test) hypothesis tests to compare the experimental results to the known value of the fine structure constant.

## Key Findings

* Statistical analysis suggests a significant difference between the experimental measurements and the established value of the fine structure constant.
* Bootstrapping results demonstrate high consistency within the limited dataset.
* Both parametric and non-parametric tests provide strong evidence against the null hypothesis of no difference.

## Limitations

The study is limited by a small sample size (n = 7) and the fact that the measurements were obtained from a documentary film rather than a controlled scientific experiment.  These factors raise concerns about the generalizability and reliability of the findings.

## Future Work

Future research should aim to:

* Replicate this analysis with a larger, independently collected dataset.
* Conduct controlled experiments specifically designed to investigate the relationship between vacuum fluctuations and the fine structure constant.
* Explore potential sources of error and bias in the documentary's measurement process.

## Repository Contents

* `On the fine structure constant.Rmd`: RMarkdown file containing the data analysis and statistical tests. Used to generate the report and analysis.
* `On-the-fine-structure-constant.html`: HTML output of the analysis report ( generated from the Rmd file).
* `README.md`: This file, providing an overview of the project.
* `References`: Folder containing reference materials for the project.

## How to Reproduce

1. Clone this repository.
2. Install R and the required libraries (e.g., `boot`, `ggplot2`).
3. Open the `On the fine structure constant.Rmd` file to view the report and reproduce the HTML output.

## Disclaimer

This analysis is exploratory in nature and should not be taken as definitive proof of a connection between vacuum fluctuations and the fine structure constant. Further research is needed to confirm or refute this hypothesis.

