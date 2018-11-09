#Import Data
getwd()
SD<-read.csv("/Users/meredithklipple/Documents/Suicide_Data.csv", stringsAsFactors = F)
names(SD)
str(SD)
#Make sex numeric
SD$Sex <- as.numeric(SD$Sex)
is.numeric(SD$Sex)

summary(SD$Sex)
#Take out combined gender categories
SD$Sex<-ifelse(SD$Sex==0, NA, SD$Sex)
summary(SD$Sex)

#Comparing 2 groups
m<-subset(SD, SD$Sex==1)
summary(m$Rate.per.100.000)
sd(m$Rate.per.100.000)
f<-subset(SD, SD$Sex==2)
summary(f$Rate.per.100.000)
sd(f$Rate.per.100.000)
hist(m$Rate.per.100.000) #Appropriate for T-test
hist(f$Rate.per.100.000) #Appropriate for T-test
t.test(m$Rate.per.100.000, f$Rate.per.100.000)

#Take out Race.ethnicity==0
SD$Race.ethnicity<-ifelse(SD$Race.ethnicity==0, NA, SD$Race.ethnicity)
#Comparing Multiple Groups
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
#ANOVA
gen.age<-aov(SD$Rate.per.100.000 ~ as.factor(SD$Race.ethnicity))
summary(gen.age)
TukeyHSD(gen.age)
