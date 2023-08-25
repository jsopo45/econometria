install.packages("tidyverse")
install.packages("wooldridge")

library(tidyverse)
library(wooldridge)

baseb = mlb1
attach(baseb)

model0 = lm(salary ~ gamesyr + hrunsyr + black)
summary(model0)

uresid = residuals(model0)
plot(x = gamesyr, y = uresid)
plot(x = salary, y = uresid)
