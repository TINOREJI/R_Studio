#question 1a

data <- c(rep("gold", 20),rep("silver",30),rep("bronze",50))
sample(data, 10)

#1b

sample(c("success","failure"),10,replace=TRUE,prob = c(0.90,0.10))

#question 2

#duplicated(c(101,103,173,189,149,141,160,102,148,74,351,84,245,40,76,216,253,146,18,157))
#any(duplicated(c(1,2,3,4,2,5,1)))
#2a

any(duplicated(sample(365,50,replace=TRUE)))

#b


#question 3
prob<-function(x,y,z){
  (x*y)/z
}
prob(0.85,0.20,0.40)

#question 4
data<-iris
#4a
head(data)

#b
str(data)

#c
range(data $ Sepal.Length)

#d
mean(data $ Sepal.Length)
mean(data $ Sepal.Width)
mean(data $ Petal.Length)
mean(data $ Petal.Width)

#e
median(data $ Sepal.Length)
median(data $ Sepal.Width)
median(data $ Petal.Length)
median(data $ Petal.Width)

#f
#first quartile
quantile(data$Sepal.Length, probs = 0.25)
quantile(data$Sepal.Width, probs = 0.25)
quantile(data$Petal.Length, probs = 0.25)
quantile(data$Petal.Width, probs = 0.25)
#third quartile
quantile(data$Sepal.Length, probs = 0.75)
quantile(data$Sepal.Width, probs = 0.75)
quantile(data$Petal.Length, probs = 0.75)
quantile(data$Petal.Width, probs = 0.75)
#inter quartile 
IQR(data$Sepal.Length)
IQR(data$Sepal.Width)
IQR(data$Petal.Length)
IQR(data$Petal.Width)

#e
#standard deviation
sd(data$Sepal.Length)
sd(data$Sepal.Width)
sd(data$Petal.Length)
sd(data$Petal.Width)
#variance
var(data$Sepal.Length)
var(data$Sepal.Width)
var(data$Petal.Length)
var(data$Petal.Width)

#f
summary(data)

#question 5
x<-c(2,1,2,3,1,2,3,4,1,5,5,3,2,3)
mode<-function(data){
  return(sort(-table(data))[1])
}
mode(x)