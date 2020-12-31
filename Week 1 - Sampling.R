#Code to load the 'Student Survey' dataset
library(SDSFoundations)
survey <- StudentSurvey

#Code to check the mean and SD of age variable
mean(survey$age)
sd(survey$age)

#Code to draw a histogram of age variable
hist(survey$age)

#Code to draw a random sample from the 'age' variable
sample(survey$age, size = 30)

#Code to create a vector to contain the above sample
myxbar <- rep(NA,1000)
for(i in 1:1000){
  mysamp <- sample(survey$age, size = 30)
  myxbar[i] <- mean(mysamp)
  }

#Code to run a histogram and get the mean of the new vector 'myxbar'
hist(myxbar)
mean(myxbar)

#Code to compare the new sd to to the population sd
sd(myxbar)
sd(survey$age)/sqrt(30)

