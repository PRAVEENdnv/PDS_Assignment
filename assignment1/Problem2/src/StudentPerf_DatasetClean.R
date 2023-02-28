# Importing dplyr and ggplot2 libraries
library(dplyr)
library(ggplot2)

# Reading the student performance data set into studentPerf_df data frame
studentPerf_df <- read.csv("C:/Users/prave/Documents/pds/assignment1/Problem2/rawData/StudentsPerformance.csv")

#printing the head data to check if the data frame is correct
head(studentPerf_df)

#command to check the rows of the data frame
nrow(studentPerf_df)

#command to check the columns of the data frame
ncol(studentPerf_df)

#command to check if the health_df have any null values in it
is.na(studentPerf_df)

#command to get the count of null values in the data set
sum(is.na(studentPerf_df))


#I don't see any null values in the data if there is any null values
#we can remove the null values ('na') using the below command
# studentPerf_df <- na.omit(studentPerf_df[studentPerf_df$column name with na values != N, ])

#print the names of the column names since they have () in the names. They are read as ..
names(studentPerf_df)

#renaming the names of columns
studentPerf_df <- rename(studentPerf_df, Gender = gender, RaceEthnicity = race.ethnicity, Parental_Level_Education = parental.level.of.education,
                Lunch = lunch, TestPreparationCourse = test.preparation.course, MathScore = math.score, ReadingScore = reading.score,
                WritingScore = writing.score)

names(studentPerf_df)


# writing the cleaned dataset to clean data folder
write.csv(studentPerf_df, "C:/Users/prave/Documents/pds/assignment1/Problem2/cleanData/cleaned_StudentsPerformance.csv")


















