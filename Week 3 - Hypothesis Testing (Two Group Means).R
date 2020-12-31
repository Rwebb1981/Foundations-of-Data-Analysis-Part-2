#Code to load the 'Survey' dataset
library(SDSFoundations)
post <- PostSurvey

#Code to run a histogram on the 'exclusive' and 'post-exclusive' variables
hist(post$exclusive)
hist(post$post_exclusive)

#Because it is the differences which need to be normal a vector of differences called 'diff' is created (this is now normal)
diff <- post$exclusive - post$post_exclusive
hist(diff)

#Code to run a two-sided paired-samples t-test (followed by code to run one-sided test)
t.test(post$exclusive,post$post_exclusive,paired = T)
t.test(post$exclusive,post$post_exclusive,paired = T, alternative = 'less')
t.test(post$exclusive,post$post_exclusive,paired = T, alternative = 'greater')

#Code to run an independent samples t-test on the same dataset to compare males vs females sleeping time:

#Code to create vectors containing values of the 'sleep_Tues' variable for males and females
fsleep <- post$sleep_Tues[post$gender == 'Female']
msleep <- post$sleep_Tues[post$gender == 'Male']

#Code to create histograms for 'fsleep' and 'msleep' vectors to check distributions (both are normal)
hist(fsleep)
hist(msleep)

#Code to run an independent samples t-test 
t.test(fsleep,msleep)
t.test(fsleep,msleep, alternative = 'less')
t.test(fsleep,msleep, alternative = 'greater')
