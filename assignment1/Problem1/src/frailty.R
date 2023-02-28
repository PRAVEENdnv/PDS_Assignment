#install the tidyverse package for rename function
install.packages("tidyverse") 
library(tidyverse)

#reading the csv file into health_df data frame from the raw data folder
health_df <- read.csv("C:/Users/prave/Documents/pds/assignment1/rawData/Frailty_Dataset.csv")

#printing the head data to check if the data frame is correct
head(health_df)

#command to check the rows of the data frame
nrow(health_df)

#command to check the columns of the data frame
ncol(health_df)

#command to check if the health_df have any null values in it
is.na(health_df)

#command to get the count of null values in the data set
sum(is.na(health_df))

#I don't see any null values in the data if there is any null values
#we can remove the null values ('na') using the below command
# health_df <- na.omit(health_df[health_df$column name with na values != N, ])

#print the names of the column names since they have () in the names. They are read as ..
names(health_df)

#renaming the names of columns
health_df <- rename(health_df, Height_inches = Height..Inches., Weight_pounds = Weight..Pounds., Grip_strength = Grip.Strength)

#checking the name changes
names(health_df)

# write the new csv file with different in cleandata folder
write.csv(health_df, "C:/Users/prave/Documents/pds/assignment1/cleanData/Cleaned_Frailty_Dataset.csv")






