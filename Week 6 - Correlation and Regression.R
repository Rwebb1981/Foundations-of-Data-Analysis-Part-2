#Code to load the 'TempskiResiliance' dataset
library(SDSFoundations)
res <- TempskiResilience

#Code to pull out a subset of respondants in the clerkship group
clerk <- res[res$Group == 'Clerkship',]

#Code to create an object to list all coeffecients we want to use (use the names function to confirm the varibale names are the same)
names(clerk)
vars <- c('BDI', 'Resilience', 'State.Anxiety', 'Trait.anxiety')

#Code to create a correlation matrix (using both Pearson and Spearman correlations)
cor(clerk[,vars])
cor(clerk[,vars], method = 'spearman')

#Code to use a linear model using the 'lm' function:

#Code to use the previously filtered 'clerk' dataset again (with a view to determining if resiliance predicts BDI, using 'resiliance' as 'x' and 'BDI' as 'y')
names(clerk)
linFit(x=clerk$Resilience,y=clerk$BDI)

#Code to perform simple regression and show a summary and confidence intervals (with the CI the 'level' function changes the alpha level)
lm(BDI~Resilience,data=clerk)
BDI_mod <- lm(BDI ~ Resilience,data=clerk)
summary(BDI_mod)
confint(BDI_mod, level = 0.01)

#Code to determine regression results if x and y had been standardized (i.e. if z-scores had been used)
lmBeta(BDI_mod)
