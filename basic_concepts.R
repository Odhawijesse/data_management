# Load necessary packages
library(ggplot2)

# Function to calculate average mileage
calculate_average_mileage <- function(data) {
  avg_mileage <- mean(data$mpg)
  return(avg_mileage)
}

# Function to create a scatter plot
create_scatter_plot <- function(data) {
  ggplot(data, aes(x = wt, y = mpg)) +
    geom_point() +
    labs(title = "Scatter Plot of Weight vs. Mileage",
         x = "Weight",
         y = "Mileage")
}

# Load the mtcars dataset
data(mtcars)

# Display the first few rows of the dataset
print(head(mtcars))

# Calculate and print the average mileage using the function
avg_mileage <- calculate_average_mileage(mtcars)
cat("Average Mileage:", avg_mileage, "\n")

# Create and display a scatter plot using the function
create_scatter_plot(mtcars)

