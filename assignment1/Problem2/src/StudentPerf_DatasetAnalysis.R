library(ggplot2)
library(dplyr)

studentPerf_df <- read.csv("C:/Users/prave/Documents/pds/assignment1/Problem2/cleanData/cleaned_StudentsPerformance.csv")

# visualization 1
# visualization on the column reading scores among different groups
boxplot(studentPerf_df$ReadingScore ~ studentPerf_df$RaceEthnicity, main = "visualizing the reading scores among different groups", 
        xlab = "Groups", ylab = "Averages")

#the visualization explains the reading scores among different groups
#rthe averages of group E are good when comapared to other


#visualization 2
# visualization based on  math score and gender columns data
# Calculating average of Math Scores using the mean function
Average = mean(studentPerf_df$MathScore)

# ggplot
ggplot(studentPerf_df, mapping = aes(Average, fill = Gender)) + geom_bar(position = "dodge") +
  ggtitle("Average of Maths Scores by Gender") + xlab("Average Math Score") + ylab("Count") + labs (fill = "Gender")

# The above visualization shows the Average of Maths Scores by Gender plot.
# the average of math score against the male and female gender are plotted and their values are analysed.
# from the analysis it is clear that the female average is higher than the male.

#visualization 3
# for visualizing the variations in writing score data
# histogram
hist(studentPerf_df$WritingScore, main = "variations in writing score data", xlab = "Writing Score", ylab = "Count")

# The above plot shows the information about the variations in writing score data
# from the plot we can see that the data is more distributed between 60 and 80.

#visualization 4
# visualization based on  writing score and gender columns data
# Calculating average of writing Scores using the mean function
Average = mean(studentPerf_df$WritingScore)

# ggplot
ggplot(studentPerf_df, mapping = aes(Average, fill = Gender)) + geom_bar(position = "dodge") +
  ggtitle("Average of Writing Scores by Gender") + xlab("Average Writinng Score") + ylab("Count") + labs (fill = "Gender")

# The above visualization shows the Average of Maths Scores by Gender plot.
# the average of math score against the male and female gender are plotted and their values are analysed.
# from the analysis it is clear that the female average is higher than the male.

# visualization 5
# visualization between Math score and writing score using scatter plot
# scatter plot
ggplot(studentPerf_df, aes(x = MathScore, y = WritingScore)) + geom_point()+
  geom_smooth() + 
  ggtitle("Relationship between Math and Writing Scores") + xlab("Math Score") + ylab("Writing Score")

# The above plot shows the relationship between math and writing scores. 
# geom point is used to depict the scores as points 
# the relation can be analysed easily using the geom smooth


# visualization 6
# visualization for test preparation course among different students 
ggplot(studentPerf_df, aes(x=factor(1), fill = TestPreparationCourse))+
   geom_bar(width = 1)+ labs(title = "Test Preparation Course among the students") +
  coord_polar("y")

# The above plot shows the visualization for test preparation course among different students
# from the plot it is clear that the students with test course preparation with completed status are lesser when compared to none.
# We can't say the exact percentage but it is still useful for some scenarios.


