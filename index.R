data <- read.csv('./data/population_usa.csv')
attach(data)

newData <- data.frame(Population, Yearly.Change, Migrants..net.)

pairs(newData, col=3)

rm <- lm(Population ~ Migrants..net. + Yearly.Change, data = newData)
summary(rm)

rm1 <- lm(Population ~ Yearly.Change, data = newData)
summary(rm1)

qqnorm(rm1$residuals)
qqline(rm1$residuals)

plot(rm1$fitted.values, rm1$residuals)