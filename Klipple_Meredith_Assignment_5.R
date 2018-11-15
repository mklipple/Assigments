#Import Data
getwd()
SD<-read.csv("/Users/meredithklipple/Documents/Suicide_Data.csv", stringsAsFactors = F)
names(SD)
str(SD)

summary(SD$Sex)
#Take out combined gender categories
SD$Sex<-ifelse(SD$Sex==0, NA, SD$Sex)
summary(SD$Sex)

summary(SD$Age)
SD$Age<-ifelse(SD$Age==3 | SD$Age==4, NA, SD$Age)
summary(SD$Age)

summary(SD$Race.ethnicity)
SD$Race.ethnicity<-ifelse(SD$Race.ethnicity==0, NA, SD$Race.ethnicity)
summary(SD$Race.ethnicity)

m<-subset(SD, SD$Sex==1)
summary(m$Rate.per.100.000)
sd(m$Rate.per.100.000)
f<-subset(SD, SD$Sex==2)
summary(f$Rate.per.100.000)
sd(f$Rate.per.100.000)

min<-subset(SD, SD$Age==1)
summary(min$Rate.per.100.000)
sd(min$Rate.per.100.000)
ad<-subset(SD, SD$Age==2)
summary(ad$Rate.per.100.000)
sd(ad$Rate.per.100.000)
hist(min$Rate.per.100.000)
hist(ad$Rate.per.100.000)
t.test(min$Rate.per.100.000, ad$Rate.per.100.000)

w<-subset(SD, SD$Race.ethnicity==1)
summary(w$Rate.per.100.000)
sd(w$Rate.per.100.000)
b<-subset(SD, SD$Race.ethnicity==2)
summary(b$Rate.per.100.000)
sd(w$Rate.per.100.000)
h<-subset(SD, SD$Race.ethnicity==1)
summary(h$Rate.per.100.000)
sd(w$Rate.per.100.000)
ap<-subset(SD, SD$Race.ethnicity==2)
summary(ap$Rate.per.100.000)
sd(w$Rate.per.100.000)
an<-subset(SD, SD$Race.ethnicity==2)
summary(an$Rate.per.100.000)
sd(w$Rate.per.100.000)

#Create Contingency Table: 1-Min, 2-Ad / 1-Male, 2-Female
table(SD$Age, SD$Sex)
ftable(SD$Age, SD$Sex)
library(gmodels) #Install this in packages and then run it
CrossTable(SD$Age, SD$Sex, prop.chisq =F)
CrossTable(SD$Age, SD$Sex, expected=T)

chisq.test(SD$Sex, SD$Age)

#Second Contingency Table: 1-M, 2-F / 1-w, 2-b, 3-h, 4-ap, 5-an
table(SD$Sex, SD$Race.ethnicity)
ftable(SD$Sex, SD$Race.ethnicity)
CrossTable(SD$Sex, SD$Race.ethnicity, prop.chisq =F)
CrossTable(SD$Sex, SD$Race.ethnicity, expected=T)

chisq.test(SD$Sex, SD$Race.ethnicity)

