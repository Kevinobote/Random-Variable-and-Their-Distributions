# Probability and Statistical Analysis

## Overview
This repository contains R scripts for performing probability and statistical analyses based on given probability mass functions (PMFs) and cumulative distribution functions (CDFs). The scripts include calculations, visualizations, and probability evaluations.

## Contents

### 1. Probability Mass Function Validation
- **Objective**: Verify whether given probability mass functions (PMFs) satisfy the properties of a valid probability distribution.
- **Key Tasks**:
  - Check if probabilities sum to 1.
  - Ensure all probabilities are non-negative.
  - Determine a multiplicative constant to make a function a valid PMF.

### 2. Cumulative Distribution Function (CDF) Analysis
- **Objective**: Compute and visualize the cumulative distribution function (CDF) for a discrete random variable.
- **Key Tasks**:
  - Compute the cumulative probabilities.
  - Plot the CDF for visualization.
  - Use the CDF to compute specific probability values.

### 3. Cost Analysis for Missed Deadlines
- **Objective**: Analyze the cost incurred due to delays in completing fabrication tasks.
- **Key Tasks**:
  - Visualize the cumulative distribution function (CDF) of costs.
  - Compute the probability that costs exceed a certain threshold.
  - Derive the probability mass function (PMF) from the CDF.

## Outputs
- **Plots**:
  - `q2.jpg`: CDF plot for the number of completed pieces.
  - `q3.jpg`: CDF plot for the cost incurred due to delays.
- **Probability Calculations**:
  - Validation of PMFs.
  - Computation of required probabilities.

## Dependencies
The scripts use the following R libraries:
- `ggplot2` for visualization.
- `dplyr`, `tidyr`, and `purrr` for data manipulation.

## Usage
1. Clone this repository.
2. Run the R scripts in an R environment.
3. Check the generated plots and probability calculations.

## Author
Kevin Obote

---
This repository is designed for educational and research purposes in probability and statistics. Contributions and discussions are welcome!