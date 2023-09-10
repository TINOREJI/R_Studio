#Q1a
gold_coins<-20
silver_coins<-30
bronze_coins<-50

chest<-c(rep("Gold",gold_coins),rep("Silver",silver_coins),rep("Bronze",bronze_coins))

sample_space<-sample(chest,size=10,replace=FALSE)
sample_space

#Q1b
result<-c("Success","Failure")
probs<-c(0.9,0.1)
samplee_space<-sample(result,size=10,replace=TRUE,prob=probs)
samplee_space

#Q2a

shared_bday<-function(n){
  prob_noshared<-1
  for (i in 1:(n-1)){
    prob_noshared=prob_noshared*(365-i)/365
  }
  return(prob_noshared)
}
# n=23
# result<-shared_bday(n)
# result

#Q2b

n=2
while(shared_bday(n) > 0.5){
  n<-n+1
}
n

#Q3

conditional_probability <- function(probA,probB,probBgivenA){
  probAgivenB=(probA/probB)*probBgivenA
  return(probAgivenB)
}
probcloudy<-0.4
probrainy<-0.2
probcloudygivenrainy<-0.85

result<-conditional_probability(probrainy,probcloudy,probcloudygivenrainy)
result

#Q4
data(iris)
#a
head(iris)
#b
str(iris)
#c
rsl<- range(iris$Sepal.Length)
rsl
#d
msl<-mean(iris$Sepal.Length)
msl
#e
mediansl<-median(iris$Sepal.Length)
mediansl
#f
quartilesl<-quantile(iris$Sepal.Length,c(0.25,0.75))
quartilerange<-diff(quartilesl)
quartilesl[1]
quartilesl[2]
quartilerange
#g
iris_no_na <- na.omit(iris$Sepal.Length)
sigmaa<-sd(iris_no_na)
sigmasq<-var(iris$Sepal.Length)
sigmaa
sigmasq
#h
#sepalwidth
rsl<- range(iris$Sepal.Width)
rsl
msl<-mean(iris$Sepal.Width)
msl
mediansl<-median(iris$Sepal.Width)
mediansl
quartilesl<-quantile(iris$Sepal.Width,c(0.25,0.75))
quartilerange<-diff(quartilesl)
quartilesl[1]
quartilesl[2]
quartilerange
iris_no_na <- na.omit(iris$Sepal.Width)
sigmaa<-sd(iris_no_na)
sigmasq<-var(iris$Sepal.Width)
sigmaa
sigmasq

#petallength

rsl<- range(iris$Petal.Length)
rsl
msl<-mean(iris$Petal.Length)
msl
mediansl<-median(iris$Petal.Length)
mediansl
quartilesl<-quantile(iris$Petal.Length,c(0.25,0.75))
quartilerange<-diff(quartilesl)
quartilesl[1]
quartilesl[2]
quartilerange
iris_no_na <- na.omit(iris$Petal.Length)
sigmaa<-sd(iris_no_na)
sigmasq<-var(iris$Petal.Length)
sigmaa
sigmasq

#petalwidth

rsl<- range(iris$Petal.Width)
rsl
msl<-mean(iris$Petal.Width)
msl
mediansl<-median(iris$Petal.Width)
mediansl
quartilesl<-quantile(iris$Petal.Width,c(0.25,0.75))
quartilerange<-diff(quartilesl)
quartilesl[1]
quartilesl[2]
quartilerange
iris_no_na <- na.omit(iris$Petal.Width)
sigmaa<-sd(iris_no_na)
sigmasq<-var(iris$Petal.Width)
sigmaa
sigmasq

#i
summary(iris)

#Q5
calculate_mode <- function(x) {
  freq_table <- table(x)
  max_freq <- max(freq_table)
  mode_values <- as.numeric(names(freq_table[freq_table == max_freq]))
  return(mode_values)
}
data <- c(1, 2, 2, 3, 4, 4, 4, 5) #example
mode_result <- calculate_mode(data)
mode_result


