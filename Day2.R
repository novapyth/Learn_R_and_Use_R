#VARIABLE ASSIGNMENT
# Assignment using equal operator.
var.1 = c(0,1,2,3)
# Assignment using leftward operator.
var.2 <- c("learn","R")
# Assignment using rightward operator.
c(TRUE,1) -> var.3
print(var.1)

cat ("var.1 is ", var.1 ,"\n")
cat ("var.2 is ", var.2 ,"\n")
cat ("var.3 is" , var.3 ,"\n")

#Finding Variables
print(ls())
print(ls(pattern="ma"))
print(ls(all.name=TRUE))

#Deleting Variables
rm(var.3) #remove var.3#
print(var.3)
rm(list=ls()) #if you want to remove all variables#
print(ls())

#OPERATORS
#We have the following types of operators in R programming:
#Arithmetic Operators
v <- c( 2,5.5,6)
t <- c(8, 3, 4)
a <- v+t
print(a)

v <- c( 2,5.5,6)
t <- c(8, 3, 4)
print(v-t)

v <- c( 2,5.5,6)
t <- c(8, 3, 4)
print(v*t)
#/, %%. ^#

#Relational Operators
v <- c(2,5.5,6,9)
t <- c(8,2.5,14,9)
print(v>t)

v <- c(2,5.5,6,9)
t <- c(8,2.5,14,9)
print(v!=t)
#>, <, ==, <=, >=, !=


#Logical Operators
v <- c(3,1,TRUE,2+3i)
t <- c(4,1,FALSE,2+3i)
print(v&t)

#&, |, &&, ||#

#Assignment Operators
<-, ->, =, <<-, ->>

#Miscellaneous Operators
v <- (2:10)
print(v)

v1 <- 8
v2 <- 12
t <- 1:10
print(t)

print(v1 %n% t)
print(v2 %n% t)

:, %n%, %*%
 
#Decision making#
 # 1. If statement syntax
 
variable.names()
if (boolean_expression) {
  //statement//
})

x <- 30
if (is.integer(x)){
  print("X is an integer")
}
  #2. Else if
condition
if(boolean_expression) {
  // statement(s) will execute if the boolean expression is true.
} else {
  // statement(s) will execute if the boolean expression is false.
}

#example:
  x <- c("what","is","truth")
if("Truth" %in% x){
  print("Truth is found")
} else {
  print("Truth is not found")
}
 
  #3. Switch statement
  #switch(expression, case1, case2, case3....)
 
  #Example:
   #x <- switch(
    #3,
    #"first",
    #"second",
    #"third",
    #"fourth"
  #)
  #print(x)
