#Code to load the 'Bull Riding' dataset
library(SDSFoundations)
bull <- BullRiders

#Code to create a new object called age and deduct 2012 from that age to determine their correct age during that season
age <- 2012 - bull$YearBorn

#Code to draw a histogram to check the distribution of age
hist(age)

#Code to run a one-sample t-test (two-sided)
t.test(age,mu = 30)

#Code to run a one-sided hypothesis (with the direction of the alternative being either 'less' or 'greater') (Remember, CIs aren't given in one-sided t-tests)
t.test(age,mu = 30, alternative = 'less')
t.test(age,mu = 30, alternative = 'greater')
