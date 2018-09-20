#Data set imported by "Import Dataset" button under Environment - because that is a way less confusing option and how "R Helpdesk" instructed.
library(readxl)
Education_Data <- read_excel("Documents/Education Data.xlsx")
View(Education_Data)

print(Education_Data)

names(Education_Data)

str(Education_Data)

summary(Education_Data$`Associate's degree, academic`)
summary(Education_Data$`Bachelor's degree`)
summary(Education_Data$`Master's degree`)
summary(Education_Data$`Professional degree`)
summary(Education_Data$`Doctoral degree`)

mode<-function(x) {
  unique_val<-unique(x)
  counts<-vector()
  for(i in 1: length(unique_val)){
    counts[i]<- length(which(x==unique_val[i]))
  }
  position<-c(which(counts==max(counts)))
  if(length(unique_val)==length(x))
    mode_x<-'Mode does not exist'
  else
    mode_x<-unique_val[position]
  return(mode_x)
}
#Attach mode to dataset
attach(Education_Data)

mode(`Associate's degree, academic`)
mode(`Bachelor's degree`)
mode(`Master's degree`)
mode(`Professional degree`)
mode(`Doctoral degree`)


sd(Education_Data$`Doctoral degree`)

install.packages("psych")
library(psych)
describe(Education_Data)
describe(Education_Data$`Doctoral degree`)

var(Education_Data$`Doctoral degree`)

graphics.off()
par("mar")
par(mar=c(1,1,1,1))

hist(Education_Data$`Doctoral degree`)

boxplot(Education_Data$`Doctoral degree`, main="Education", xlab="X Axis Title", ylab="Y Axis Title")

