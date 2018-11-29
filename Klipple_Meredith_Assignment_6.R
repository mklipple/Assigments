SD<-read.csv("/Users/meredithklipple/Documents/Suicide_Data.csv", stringsAsFactors = F)
names(SD)
str(SD)

summary(SD$Age)
SD$Age<-ifelse(SD$Age==3 | SD$Age==4, NA, SD$Age)
summary(SD$Age)

min<-subset(SD, SD$Age==1)
summary(min$Rate.per.100.000)
sd(min$Rate.per.100.000)
ad<-subset(SD, SD$Age==2)
summary(ad$Rate.per.100.000)
sd(ad$Rate.per.100.000)

cor(SD$Age, SD$Rate.per.100.000, method="pearson")
cor.test(SD$Age, SD$Rate.per.100.000)