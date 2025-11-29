# Fit the linear regression model
model <- lm(mpg ~ hp, data = mtcars)

# Create a new data frame for prediction
new_car <- data.frame(hp = 150)

# Predict the mpg for the new car
predicted_mpg <- predict(model, newdata = new_car)

# Print the predicted mpg
print(predicted_mpg)