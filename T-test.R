#Author: Zora Stephens, Date: 9/22/26, Purpose: To perform T-test

#Create variables x and y with some dummy dataset
x=rnorm(10)
y=rnorm(10)

#Make a normal distribution plot/curve for reference
pts = seq(-4.5,4.5,length=100)
plot(pts,dt(pts,df=9),col='red',type='l')

#Add x and y points on existing plot window
lines(density(x), col='green')
lines(density(y), col='blue')

#Add another curve, color yellow with 100 points between 2 and 4
pts=seq(2,4,length=100)
lines(density(pts), col='yellow')

# Apply the T-test function to check differences between variables x and y
ttest = t.test(x,y)

Welch Two Sample t-test

data:  x and y
t = -0.41049, df = 17.954, p-value = 0.6863
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -1.1305184  0.7610113
sample estimates:
  mean of x   mean of y 
-0.26672093 -0.081967

#x and y are not significantly different variables/groups
