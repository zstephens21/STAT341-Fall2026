#Name: Zora Stephens, Date: 8/27/26, Purpose: test the correlation analysis

#Install package ggpub
if(!require(devtools)) install.packages("devtools"); devtools::install_github("kassambara/ggpubr")

#Load package ggpubr
library("ggpubr")

#Load dummy dataset
my_data <- mtcars

#Alternate Hypothesis: The weight of the car is inversely related to the miles per gallon it can travel
#Null Hypothesis: There is no difference/ no relation between the weight of the car and the miles it can travel

ggscatter(my_data, x = "mpg", y = "wt", add = "reg.line", conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson", xlab = "Miles/(US) gallon", ylab = "Weight (1000 lbs)")
