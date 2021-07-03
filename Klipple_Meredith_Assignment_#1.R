#1
x <- c(5, 10, 15, 20, 25, 30)
y <- c(-1, NA, 75, 3, 5, 8)
z <- c(5)

#2
x*z
y*z
xz <- c(25, 50, 75, 100, 125, 150)
yz <- c(-5, NA, 375, 15, 25, 40)
print(xz)
print(yz)

#3
y <- ifelse(test = is.na(y)==T, yes = 2.5, no = y)
print (y)

#4
library (readr)
assign <- read.csv(file = "http://raw.githubusercontent.com/mattdemography/EDU_7043/master/Data/Assignment_1.csv")

#Dataset Questions
assign$State[1:10]
mean (assign$Murder)
median (assign$Murder)
NewEngland <- subset(assign,State=="ME"|State=="VT"|State=="MA"|State=="NH"|State=="RI"|State=="CT")
mean (NewEngland$Murder)
assign$Vcrime <- as.numeric(as.character(assign$Vcrime));mean(assign$Vcrime, na.rm = T)

#Great Job.
#120 out of 100