# Set directory
setwd("D:/IT24102375")

# Import CSV
student_data <- read.csv("Exercise.csv")

# View first rows
head(student_data)

# Summary for Age
summary(student_data$X1)

# Histogram of Age
hist(student_data$X1,
     main = "Age Distribution",
     xlab = "Age",
     col = "lightblue",
     border = "black")

# Frequency table for Gender
table(student_data$X2)

# Barplot for Gender
barplot(table(student_data$X2),
        main = "Gender Distribution",
        xlab = "Gender (1=Male, 2=Female)",
        ylab = "Frequency",
        col = c("lightgreen", "pink"))

# Frequency table
table(student_data$X3)

# Barplot
barplot(table(student_data$X3),
        main = "Accommodation Types",
        xlab = "Type (1=Home, 2=Boarded, 3=Lodging)",
        ylab = "Frequency",
        col = c("skyblue", "orange", "purple"))

# Boxplot Age
boxplot(X1 ~ X3, data = student_data,
        main = "Age by Accommodation",
        xlab = "Accommodation Type",
        ylab = "Age",
        col = c("skyblue", "orange", "purple"))

# Mean age
aggregate(X1 ~ X3, data = student_data, FUN = mean)
