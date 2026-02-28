data<-read.csv("C:/Users/Yashwardhan Shinde/DATA SCIENCE/StudentsPerformance.csv")
head(data)
str(data)
summary(data)

colSums(is.na(data))

install.packages("ggplot2")
library(ggplot2)

data$performance_band <- ifelse(data$average_score >= 85, "Excellent",
                           ifelse(data$average_score >= 70, "Good",
                           ifelse(data$average_score >= 50, "Average",
                                  "Poor")))

hist(data$math.score,main = "Histogram of Maths Score",
     xlab = "Maths Score",
     col = "lightblue")

boxplot(math.score ~ gender,
        data = data,
        main = "Math Score by Gender",
        xlab = "Gender",
        ylab = "Math Score",
        col = c("pink","lightgreen"))

plot(data$math.score,
     data$reading.score,
     main = "Math Score vs Reading Score",
     xlab = "Math Score",
     ylab = "Reading Score",
     col = "blue",
     pch = 19)

barplot(table(data$gender),
        main = "Number of Students by Gender",
        xlab = "Gender",
        ylab = "Count",
        col = c("pink","lightgreen"))

hist(data$reading.score,
     main = "Histogram of Reading Score",
     xlab = "Reading Score",
     col = "lightcoral",

     border = "black")
