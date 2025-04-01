# Set seed for reproducibility
set.seed(111)

# Generate a random sample of 1000 observations from Uniform(10, 15)
sample <- runif(1000, 10, 15)

# Load necessary library
library(ggplot2)

# Create a histogram with improved visibility
histogram <- ggplot(data.frame(x = sample), aes(x = x)) +
  geom_histogram(aes(y = ..density..), bins = 30, 
                 fill = "steelblue", alpha = 0.7, color = "black") +
  
  # Overlay normal approximation of Uniform(10,15)
  stat_function(fun = dnorm, 
                args = list(mean = 12.5, sd = (15 - 10) / sqrt(12)), 
                color = "red", size = 1.2) +
  
  # Add labels and theme
  labs(title = "Histogram of Random Sample", 
       x = "Value", y = "Density") +
  theme_minimal()

# Save the histogram as a JPG file with higher resolution
ggsave("histogram.jpg", plot = histogram, width = 8, height = 6, dpi = 400)
