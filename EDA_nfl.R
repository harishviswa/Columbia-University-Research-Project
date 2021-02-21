nflData <- read.csv("PlayList.csv")
library(tidyverse)
library(ggplot2)

glimpse(nflData)
summary(nflData)
colnames(nflData)

summary(as.factor(nflData$RosterPosition))
summary(as.factor(nflData$StadiumType))
summary(as.factor(nflData$FieldType))
summary(as.factor(nflData$Weather))
summary(as.factor(nflData$PlayType))
summary(as.factor(nflData$Position))
summary(as.factor(nflData$PositionGroup))

#bar chart
ggplot(data = nflData) +
  geom_bar(mapping = aes(x = RosterPosition))

# histogram
nflData %>% #pipeline expression
  ggplot() +
  geom_histogram(mapping = aes(x = PlayerGamePlay), binwidth = 0.1)

nflData %>% 
  ggplot(mapping = aes(x = PlayerGamePlay, colour = PlayType)) +
  geom_freqpoly(binwidth = 0.1)

# boxplot (one categorical + one numerical variable)
nflData %>%
  ggplot(mapping = aes(x = Position, y = PlayerGame)) +
  geom_boxplot()

# two categorical variables
nflData %>% 
  ggplot() +
  geom_count(mapping = aes(x = Position, y = PlayType))
