# Question 3: Computing and Plotting the CDF of Y
library(ggplot2)

y_values <- c(0, 1, 2, 3)
F_y <- c(0.2, 0.7, 0.9, 1.0)  # Given CDF values

# Plot the CDF of Y
cdf_y_data <- data.frame(y = y_values, F_y = F_y)
cdf_y_plot <- ggplot(cdf_y_data, aes(x = y, y = F_y)) +
  geom_step(color = "red", size = 1.2) +
  labs(title = "CDF of Y (Cost Due to Delays)", x = "Cost (Hundreds of Dollars)", y = "Cumulative Probability") +
  theme_minimal()

ggsave("q3.jpg", plot = cdf_y_plot, width = 8, height = 6, dpi = 300)  # Save plot

# Compute probability that the cost is at least $200.00 (i.e., Y ≥ 2)
prob_at_least_200 <- 1 - F_y[3]  # P(Y ≥ 2)
print(prob_at_least_200)

# Compute PMF from CDF
p_y <- diff(c(0, F_y))
print(p_y)  # The PMF of Y
