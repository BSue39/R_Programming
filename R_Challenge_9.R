# Load the mtcars dataset and necessary libraries
data(mtcars)
library(ggplot2) # For plotting

# Scale the data before PCA
mtcars_scaled <- scale(mtcars)

# Perform PCA
pca_result <- prcomp(mtcars_scaled)

# Create a data frame of the first two principal components
pca_data <- as.data.frame(pca_result$x[, 1:2])
colnames(pca_data) <- c("PC1", "PC2")

# Create the scatter plot
ggplot(pca_data, aes(x = PC1, y = PC2)) +
  geom_point(alpha = 0.8, size = 3) +
  labs(title = "Scatter Plot of First Two Principal Components of mtcars",
       x = "Principal Component 1 (PC1)",
       y = "Principal Component 2 (PC2)") +
  theme_minimal()