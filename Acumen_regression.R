data <- read.csv("Clean_data.csv")
data$Race <- factor(data$Race)
data$Sex <- factor(data$Sex)

# Regression
regression <- lm(Health.Score ~ Sex + Race + Age + Hospital_V + Salary, data = data)
summary(regression)

# Boxplots
boxplot(data$Health.Score ~ data$Sex, xlab = 'Sex (Male =1)', ylab = 'Health Score', main = 'Health Score v Gender')
boxplot(data$Health.Score ~ data$Race, xlab = 'Race', ylab = 'Health Score', main = 'Health Score v Gender')
