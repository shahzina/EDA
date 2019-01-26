getwd()
setwd('~/Documents')

install.packages('ggplot2', dependencies = T)
library(ggplot2)

reddit <- read.csv('reddit_U12_T2.csv')

table(reddit$employment.status)
#put all categories of employment status in a table. 
###


summary(reddit)

str(reddit)
levels(reddit$age.range)

library(ggplot2)
qplot(data = reddit, x = age.range)
qplot(data = reddit, x = income.range)

#Setting Levels of Ordered Factors- Solution

reddit$age.range<- ordered(reddit$age.range, levels= c('Under 18','18-24',
                                                       '25-34','35-44','45-54',
                                                       '55-64', '65 or above'))

reddit$age.range<- factor(reddit$age.range, levels= c('Under 18','18-24',
                                                       '25-34','35-44','45-54',
                                                       '55-64', '65 or above'), 
                                                        ordered = T)

#TRY REORDERING THE INCOME.RANGE AND SEE IF THE PLOT CHANGES