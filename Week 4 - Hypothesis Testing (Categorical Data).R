#Code to run a chi-square goodness of fit test using the hypothesis that 1/3 AustinCityLimits live artists have won a Grammy:

#Code to load the 'AustinCityLimits' dataset
library(SDSFoundations)
acl <- AustinCityLimits

#Code to create a table of counts of 'Yes', for who has received a Grammy
gtab <- table(acl$Grammy)
gtab

#Code to create a vector which holds the proportion of yes/no (remember to keep the proportions in the same order displayed in the table)
claimp <- c(2/3, 1/3)

#Code to run a chi-square goodness of fit test on observed counts vs claimed proportions
chisq.test(gtab,p=claimp)

#Code to run the test again, but to check our sample size assumption (this needs to be greater than 5 in all cells, which it is, so our result is valid)
chisq.test(gtab,p=claimp)$expected

#Code to run a chi-square test of independence to test the hypothesis that the probability of winning a Grammy is the same across all age groups:

#Code to create a contingency table containing x2 variables (i.e. 'Grammy' and 'Age.Group')
grammyage <- table(acl$Grammy, acl$Age.Group)
grammyage

#Code to check the sample size assumption of the chi-square test (this needs to be greater than 5 in all cells)
chisq.test(grammyage)$expected

#Code to run a chi-square test of independence (this test automatically runs a non-parametric correction if the sample size is below 5 - as our sample sizes are all above 5 we set the correction to 'false')
chisq.test(grammyage, correct = F)
