# Load the necessary libraries
library(caret) # For data splitting and training
library(class) # For k-NN algorithm

# Load the Iris dataset
data(iris)

# Set a seed for reproducibility
set.seed(123)

# Create a data partition (e.g., 70% training, 30% testing)
# 'createDataPartition' ensures stratified sampling for the 'Species' variable
trainIndex <- createDataPartition(iris$Species, p = 0.7, list = FALSE)
training_set <- iris[trainIndex, ]
testing_set <- iris[-trainIndex, ]

# Separate features and target variable for training and testing sets
train_features <- training_set[, -5] # All columns except 'Species'
train_labels <- training_set$Species
test_features <- testing_set[, -5]
test_labels <- testing_set$Species

# Train the k-NN classifier with k=3
# 'knn' function requires training features, test features, training labels, and k
knn_predictions <- knn(train = train_features, test = test_features, cl = train_labels, k = 3)

# Calculate the accuracy of the model
# Compare predicted labels with actual test labels
accuracy <- sum(knn_predictions == test_labels) / length(test_labels)

# Print the accuracy
print(paste("Accuracy of the k-NN model (k=3):", round(accuracy, 4)))