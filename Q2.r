# Set up given probability mass functions

# Part (a): Checking legitimacy of p1(x) and p2(x)
# A probability mass function must satisfy:
# 1. All probabilities must be non-negative
# 2. The sum of all probabilities must equal 1

# Define x values
x1 <- c(0, 1, 2, 3)

# Define p1(x) probabilities
tab_p1 <- c(0.3, 0.3, 0.5, -0.1)  # Given probabilities for p1(x)

# Check conditions for p1(x)
is_non_negative_p1 <- all(tab_p1 >= 0)  # Check if all probabilities are non-negative
sum_p1 <- sum(tab_p1)  # Compute the sum of probabilities
is_legitimate_p1 <- is_non_negative_p1 && (sum_p1 == 1)  # Check legitimacy

# Define p2(x) probabilities
tab_p2 <- c(0.1, 0.4, 0.4, 0.1)  # Given probabilities for p2(x)

# Check conditions for p2(x)
is_non_negative_p2 <- all(tab_p2 >= 0)  # Check if all probabilities are non-negative
sum_p2 <- sum(tab_p2)  # Compute the sum of probabilities
is_legitimate_p2 <- is_non_negative_p2 && (sum_p2 == 1)  # Check legitimacy

# Print results
cat("Is p1(x) a valid PMF?:", is_legitimate_p1, "(Sum =", sum_p1, ")\n")
cat("Is p2(x) a valid PMF?:", is_legitimate_p2, "(Sum =", sum_p2, ")\n")

# Part (b): Finding the value of k so p(x) is a valid PMF
# We solve for k in the equation: 0.2k + 0.3k + 0.4k + 0.2k = 1

# Define given probability function p(x) as a function of k
coefficients <- c(0.2, 0.3, 0.4, 0.2)  # Given coefficient values

# Compute k such that sum(p(x)) = 1
k <- 1 / sum(coefficients)

# Print the computed k value
cat("Value of k to make p(x) a valid PMF:", k, "\n")

# Question 2: CDF of X and probability computation

# Define X values and corresponding probabilities
x2 <- c(0, 1, 2, 3, 4, 5)
p_x <- c(0.05, 0.10, 0.15, 0.25, 0.35, 0.10)  # Given PMF

# Compute CDF
F_x <- cumsum(p_x)  # Cumulative sum gives the CDF

# Print the CDF
cdf_table <- data.frame(x = x2, CDF = F_x)
print(cdf_table)

# Plot the CDF
library(ggplot2)

ggplot_cdf <- ggplot(cdf_table, aes(x = x, y = CDF)) +
  geom_step(color = "blue", size = 1) +
  geom_point(color = "red", size = 2) +
  labs(title = "Cumulative Distribution Function (CDF) of X", x = "X", y = "F(X)") +
  theme_minimal()

# Save the CDF plot as q2.jpg
ggsave("q2.jpg", plot = ggplot_cdf, width = 8, height = 6, dpi = 300)

# Part (b): Probability that between 1 and 4 pieces are completed
prob_1_to_4 <- F_x[which(x2 == 4)] - F_x[which(x2 == 0)]

# Print the probability result
cat("P(1 ≤ X ≤ 4):", prob_1_to_4, "\n")
