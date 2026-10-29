#Author: Zora Stephens, Date: 10/27/26, Purpose: Test Chi Square Test

#Read sample dataset
data_frame <- read.csv("https://goo.gl/j6lRXD")

#Print the dataset in a table form
table(data_frame$treatment, data_frame$improvement)

#Apply the chi-square function to calculate the difference between treated and not-treated groups
chisq.test(data_frame$treatment, data_frame$improvement, correct=FALSE)

Pearson's Chi-squared test

data:  data_frame$treatment and data_frame$improvement
X-squared = 5.5569, df = 1, p-value = 0.01841