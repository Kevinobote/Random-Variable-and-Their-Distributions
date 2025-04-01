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
# Check if all probabilities are non-negative
is_non_negative_p1 <- all(tab_p1 >= 0)  
sum_p1 <- sum(tab_p1)  # Compute the sum of probabilities
is_legitimate_p1 <- is_non_negative_p1 && (sum_p1 == 1)  # Check legitimacy

# Define p2(x) probabilities
tab_p2 <- c(0.1, 0.4, 0.4, 0.1)  # Given probabilities for p2(x)

# Check conditions for p2(x)
# Check if all probabilities are non-negative
sum_p2 <- sum(tab_p2)  # Compute the sum of probabilities
is_non_negative_p2 <- all(tab_p2 >= 0)  
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
