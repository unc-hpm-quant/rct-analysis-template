# RCT Analysis Template Repository

This repository provides a template for reproducible data analysis of a randomized controlled trial (RCT) in R. The structure ensures best practices in data organization, version control, and reproducibility using `renv` for dependency management and Quarto for dynamic reports.

## 📦 Repository Structure

```bash
rct-analysis-template/
├── README.md                # Project overview and instructions
├── .gitignore               # Files to ignore in version control
├── renv.lock                # Lockfile for reproducible environments
├── data/
│   └── raw/                 # Unmodified datasets
│       └── rct_sim_data.csv # Example RCT dataset
│   └── working/             # Intermediate datasets for analysis
├── analysis/
│   ├── analysis.qmd         # Quarto document for analysis and reporting
│   └── helpers.R            # Utility functions for the analysis
└── output/                  # Generated results and figures
```

---

## 📊 How to Use This Template

### 1. Clone the Repository
```bash
git clone <repository-url>
cd rct-analysis-template
```

### 2. Set Up the R Environment

Ensure you have R and RStudio installed. The project uses the renv package for reproducible environments.

# Initialize and restore the R environment

```bash
install.packages("renv")
renv::restore()
```

### 3. Load the Data and Run the Analysis

- The dataset is stored in data/raw/rct_sim_data.csv.
- Open analysis/analysis.qmd in RStudio.
- Run the analysis by clicking the “Render” button or using:

```bash
quarto::quarto_render("analysis/analysis.qmd")
```

### 4. Outputs

- Results will be saved in the output/ folder.

---

## 📦 Reproducibility with renv

This project uses renv to ensure a reproducible environment. All package versions are captured in the renv.lock file. To restore the same environment:

```r
renv::restore()
```

---

## ✅ Best Practices

- Do not modify data in the raw/ folder. Use the working/ folder for cleaned data.
- Commit frequently: Use version control to track changes (git commit -m "commit message").
- Document your analysis: Use the Quarto document (analysis.qmd) for transparency.
