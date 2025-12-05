library(ggplot2)

# Create a sample dataset
set.seed(123) # for reproducibility
x <- 1:100
y <- 2 * x +rnorm(100, mean = 0, sd = 20) # y =2x + noise
data <- data.frame(x = x, y = y)

# Split the data into training and testing sets.
# This allows for evaluation of the model's performance on unseen data.
train_index <- sample(1:nrow(data), 0.7 * nrow(data))
train_data <- data[train_index, ]
test_data <- data[-train_index, ]

# Train the linear regression model
model <- lm(y ~ x, data = train_data)

# Make predictions on the test data
predictions <- predict(model, newdata = test_data)

# Evaluate the model (e.g., using Mean Squared Error)
mse <- mean((test_data$y - predictions)^2)
print(paste("Mean Squared Error:", round(mse, 2)))

# Visualize the results to understand the model's fit.
ggplot(data, aes(x = x, y = y)) +
  geom_point() +
  geom_smooth(method = "lm", col = "red") +
  labs(title = "Linear Regression Model", x = "Independent Variable (x)", y = "Dependent Variable (y)") +
  theme_minimal()
