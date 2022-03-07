

#install.packages("plyr")
library(data.table)
library(plyr)

#load data set into R
Student_assignment_6 <- read.table("C:\\USF\\SPRING2022\\R-PROGRAMMING\\Assignment8\\data\\Assignment_6_Dataset.txt", header = TRUE, sep=",")
Student_assignment_6

#find mean grade for students
StudentAverage = ddply(Student_assignment_6,"Sex",transform,Grade.Average=mean(Grade))
StudentAverage

#Sort data set
write.table (StudentAverage, "Sorted_Average", sep=",")

#query data set for all students with "i" in their name
StudentAverageNew = subset(StudentAverage, grepl("[iI]",StudentAverage$Name))
StudentAverageNew

#save result set to CSV file
write.csv(StudentAverageNew,"C:\\USF\\SPRING2022\\R-PROGRAMMING\\Assignment8\\data\\StudentAverageNew.csv")