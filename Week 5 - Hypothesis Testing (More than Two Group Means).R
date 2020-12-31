#Code to load 'Film' dataset
library(SDSFoundations)
film <- FilmData

#Code to determine how long films stayed in the theatre and to draw a boxplot and histogram of this
fivenum(film$Days)
boxplot(film$Days, main = 'Days in Theatre', xlab = 'All films', ylab = 'Days')
hist(film$Days)

#Code to create groups boxplots of this data
boxplot(film$Days~film$Genre, main = 'Days in Theatre', xlab = 'Genre', ylab = 'Days')

#Code to check the means across groups
aggregate(Days~Genre, film, mean)

#Code to check the sd across groups
aggregate(Days~Genre, film, sd)

#Code to run a one-way ANOVA to test the hypothesis that the mean number of days in theatres is the same across groups (p=0.504 so hypothesis is rejected)
daysmodel <- aov(film$Days~film$Genre)
summary(daysmodel)

#Code to run post-hoc analysis (only if the previous finding was significant)
TukeyHSD(daysmodel)
