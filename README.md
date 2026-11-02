# LASI: pensions and healthcare use

Replication code for "Social Protection in Later Life and Healthcare Utilization in India".

## Files
- `LASI_analysis.qmd`: all regressions and tables (HTML website + PDF)
- `index.qmd`, `_quarto.yml`, `styles.css`: website
- `tables/`: every table as a LaTeX file (made when you render)
- `data/`: put `LASI_FINAL_PENSION.dta` here (not uploaded, LASI data is restricted)

## How to run
1. Install R packages: `install.packages(c("haven","dplyr","fixest","marginaleffects","AER","sandwich","MASS"))`
2. Put `LASI_FINAL_PENSION.dta` in `data/`.
3. Render: `quarto render` (needs Quarto and a LaTeX install such as TinyTeX for the PDF).
4. The website is created in `docs/`.

## Put it on GitHub Pages
Push everything, including the `docs/` folder. Then on GitHub:
Settings → Pages → Branch `main`, folder `/docs`.
(Because the data cannot be on GitHub, render on your own computer and push `docs/`.)
Change the GitHub link in `_quarto.yml`.
