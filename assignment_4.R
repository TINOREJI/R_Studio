#question 1
x<-c(0,1,2,3,4)
p<-c(0.41,0.37,0.16,0.05,0.01)
print(sum(x*p))
print(weighted.mean(x,p))
print(c(x%*%p))

#question 2
f<-function(x){
  return(x*0.1*exp(-0.1*x))
}
I<-integrate(f,lower=0,upper=Inf)
I$value

#question 3
x<-c(0,1,2,3)
p<-c(0.1,0.2,0.2,0.5)
y<-10*x-12
p<-sum(y*p)
print(p)

#question 4
f<-function(x){
  return(x*0.5*exp(-abs(x)))
}

f1<-function(x){
  return(x^2*0.5*exp(-abs(x)))
}

first_moment = integrate(f,lower=0,upper=10)$value
second_moment = integrate(f1,lower=0,upper=10)$value
first_moment

var = second_moment - first_moment^2
var

#question 5
f<-function(x){
  return(3/4*((1/4)^(x-1)))
}
f1<-function(x){
  y = x^2
  return(y)
}
x<-as.numeric(c(1,2,3,4,5))
res1<-f1(x=3)
f(res1)
res<-f1(x)
res
f(res)
