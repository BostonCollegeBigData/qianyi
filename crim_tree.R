Boston <- read.csv("~/Downloads/Boston.csv")

# split data set into a train and test portion
set.seed(2)
split <- sample(nrow(`Boston`), floor(0.7*nrow(`Boston`)))
train <- `Boston`[split,]
test <- `Boston`[-split,]

# Regression Tree Example
library(rpart)
library(rpart.plot)

# grow tree 
fit <- rpart(crim~., train, method="anova")

# display the results 
printcp(fit)

# visualize cross-validation results 
plotcp(fit)

# detailed summary of splits
summary(fit)

# create additional plots 
par(mfrow=c(1,2))
rsq.rpart(fit)

# plot tree 
rpart.plot(fit, type=4, extra= 101)




