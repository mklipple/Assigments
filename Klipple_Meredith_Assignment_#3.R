prb<-read.csv(file= "/Users/meredithklipple/Desktop/Education_table.csv", stringsAsFactors = F)

names(prb)
str(prb)

Degree<-Education_table[(1:14),(17:17)]

#Central tendency
mean(Education_table$`High school graduate`)
mean(Education_table$`Some college, no degree`)
mean(Education_table$`Bachelor's degree`)
mean(Education_table$`Master's degree`)
mean(Education_table$`Doctoral degree`)
median(Education_table$`High school graduate`)
median(Education_table$`Some college, no degree`)
median(Education_table$`Bachelor's degree`)
median(Education_table$`Master's degree`)
median(Education_table$`Doctoral degree`)
mode(Highschoolgraduate)

#variables through variance
var(Degree)
max(Degree)-min(Degree)
a <- c(1700, 16, 1685, 116, 235, 192, 200, 189, 170, 137, 140, 108, 79, 117)
sd(a)
sqrt(sum((a-mean(a))^2/(length(a)-1)))

#Normality
qqnorm(ex); qqline(ex)
qqnorm(mastersdegree$mastersdegree); qqline(mastersdegree$mastersdegree)