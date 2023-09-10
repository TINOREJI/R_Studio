#question 1

#in case of equality 
p1<-dbinom(7,12,1/6)
p2<-dbinom(8,12,1/6)
p3<-dbinom(9,12,1/6)
prob <- p1+p2+p3
print(prob)

#in case of inequality 

prob1 <- diff(pbinom(c(6,9),12,1/6))
print(prob1)

#question 2

#in case of inequality 
prob<-pnorm(84, 72, 15.2, lower.tail = TRUE)
print(prob)

#question 3

#part 1
prob<-dpois(0,5)
print(prob)

#part 2
prob1<-diff(ppois(c(47,50),50))
print(prob1)

#question 4
prob<-dhyper(3,17,233,5)
print(prob)

#question 5

#part1
x <- 1:31
print(x)
#part2
pmf<-dbinom(x,31,0.447)
plot(x,pmf)
#part3
cdf<-pbinom(x,31,0.447)
plot(x,cdf)
#part4
x<-mean(0:31)
print(x)
x<-var(0:31)
print(x)
x<-sd(0:31)
print(x)

