#question 1
A = c(5,10,15,20,25,30)
max(A)
min(A)

#question 2
X = as.integer(readline("input data: "))
if(X < 0){
  print("Error")
}else{
  res<-factorial(X) 
  paste("factorial of ",X," is ",res)
}

#question 3
Fibonacci <- function(n) {
  if (n == 0 || n == 1) {
    return(n)
  } else {
    return(Fibonacci(n - 1) + Fibonacci(n - 2))
  }
}
N <- as.integer(readline("Enter a value for N: "))
paste("The Fibonacci sequence up to the", N, "th term is:")
for (i in 0:N) {
  cat(" ", Fibonacci(i))
}

#question 4
add <- function(x, y) {
  return(x + y)
}
subtract <- function(x, y) {
  return(x - y)
}
multiply <- function(x, y) {
  return(x * y)
}
divide <- function(x, y) {
  return(x / y)
}

print("Select operation.")
print("1. Add")
print("2. Subtract")
print("3. Multiply")
print("4. Divide")
choice <- as.integer(readline(prompt="Enter choice[1/2/3/4]: "))

num1 <- as.integer(readline(prompt="Enter first number: "))
num2 <- as.integer(readline(prompt="Enter second number: "))

result <- switch(choice,
                 add(num1, num2),
                 subtract(num1, num2),
                 multiply(num1, num2),
                 divide(num1, num2))


print(paste(num1, " ", choice, " ", num2, " = ", result))

#question 5
#PLOT

plot(1,4)
plot(c(1,8),c(4,4))
plot(c(1, 2, 3, 4, 5), c(3, 7, 8, 9, 12))
plot(1:10)

#line
plot(1:10, type="l")
plot(1:10, type="l", col = "blue", lwd=2)

# barplot

x <- c(7,2,5,6,9,1)
barplot(x,xlab = "data",ylab = "height")

#piechart

x<-c(210, 450, 250, 100, 50, 90)
names(x) <- c("Algo", "DS", "Java", "C", "C++", "Python")
pie(x,labels = names(x), col = "pink", main = "languages", radius = -1, col.main="blue")

#histogram 
x <- c(21, 23, 56, 90, 20, 7, 94, 12,
       57, 76, 69, 45, 34, 32, 49, 55, 57)
hist(x,main="histogram", xlab = "data")

#scatterplot

x <- c(5,7,8,7,2,2,9,4,11,12,9,6)
y <- c(99,86,87,88,111,103,87,94,78,77,85,86)
plot(x,y,main="scatter plot", xlab = "dataX", ylab = "dataY")

#boxplot
x <- c(42, 21, 22, 24, 25, 30, 29, 22,
       23, 23, 24, 28, 32, 45, 39, 40)
boxplot(x,xlab="box plot", ylab="data")