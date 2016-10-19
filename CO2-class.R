*fit a basic model on the CO2 data

library(datasets)

data("CO2")
head(CO2)
str(CO2)

fit <-lm(uptake ~ conc, data = CO2)


summary(fit)
str(fit)
fitted(fit)
residuals(fit)

