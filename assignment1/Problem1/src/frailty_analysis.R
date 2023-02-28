# Installing the packages caTools, ROCR and party
install.packages("caTools")
library(caTools)

install.packages("ROCR") 
library(ROCR)

install.packages("party")
library(party)

#reading the csv file into health_df data frame from the raw data folder
health_df <- read.csv("C:/Users/prave/Documents/pds/assignment1/cleanData/cleaned_Frailty_Dataset.csv")

#printing the head data to check if the data frame is correct
head(health_df)

# in the frailty column changing all the 'Y' to 1 and 'N' to 0
health_df$Frailty <- ifelse(health_df$Frailty == "Y", 1, 0)


head(health_df)

# Checking the relationship between weight and the frailty
scatterplot <- plot(health_df$Weight_pounds , health_df$Frailty, main = "bar plot between weight and frailty", xlab = "Frailty", ylab = "Weight")

# Summary of health data frame
summary(health_df)

#split the health data set for train and test data (80% train and 20% for testing)
split <- sample.split(health_df, SplitRatio = 0.8)

#train and test data 
train_data <- subset(health_df, split == "TRUE")
test_data <- subset(health_df, split == "FALSE")

# Training the decision Tree model
decisiontree <- ctree( Frailty ~ Height_inches + Weight_pounds + Age  + Grip_strength , data = train_data)

# Print the model
decisiontree

# Predict test data using the decision tree model
predict <- predict(decisiontree, test_data)
predict

# summary of the model
print(summary(decisiontree))

# Saving the results summary of the decision tree model to results folder
capture.output(print(summary(decisiontree)),file="C:/Users/prave/Documents/pds/assignment1/results/result.txt")





