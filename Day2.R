#VARIABLE ASSIGNMENT
# Assignment using equal operator.
var.1 = c(0,1,2,3)
# Assignment using leftward operator.
var.2 <- c("learn","R")
# Assignment using rightward operator.
c(TRUE,1) -> var.3
print(var.1)

#The values of the variables can be printed using print() or cat()function. The cat() function combines multiple items into a continuous print output#
cat ("var.1 is ", var.1 ,"\n")
cat ("var.2 is ", var.2 ,"\n")
cat ("var.3 is" , var.3 ,"\n")

#Finding Variables.ls () is a function use to search pre-defined variables#
print(ls())
print(ls(pattern="ma"))
print(ls(all.name=TRUE))

#Deleting Variables#
rm(var.3) #remove var.3#
print(var.3)
rm(list=ls()) #if you want to remove all variables#
print(ls())

#OPERATORS#
#We have the following types of operators in R programming:#
#1. Arithmetic Operators#
# (Number of arithmetic operators: +,-,%%,^,/,*)#
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

#2. Relational Operators#
#Number of Relational operators:>, <, ==, <=, >=, !=#
v <- c(2,5.5,6,9)
t <- c(8,2.5,14,9)
print(v>t)

v <- c(2,5.5,6,9)
t <- c(8,2.5,14,9)
print(v!=t)

#3. Logical Operators#
# Number of logical operators: &, |, &&, ||#
v <- c(3,1,TRUE,2+3i)
t <- c(4,1,FALSE,2+3i)
print(v&t)

#Assignment Operators#
# Number of Assignment operators: <-, ->, =, <<-, ->>#
v1 <- c(3,1,TRUE,2+3i)
v2 <<- c(3,1,TRUE,2+3i)
v3 = c(3,1,TRUE,2+3i)
print(v1)
print(v2)
print(v3)

#Miscellaneous Operators#
#Number of Miscellaneous operators :, %in%, %*%#
v <- (2:10)
print(v)

v1 <- 8
v2 <- 12
t <- 1:10
print(t)
print(v1 %n% t)
print(v2 %n% t)

 
#Decision making#
# 1. If statement syntax
#     variable.names()
#     if (boolean_expression) {
#     //statement//
#     })

x <- 30
if (is.integer(x)){
  print("X is an integer")
}

#2. Else if#
#variable.names()
#  if(boolean_expression) {
#  // statement(s) will execute if the boolean expression is true.
# } else {
# // statement(s) will execute if the boolean expression is false.
# }

#example:
x <- c("what","is","truth")   #define variable#
if("Truth" %in% x){
  print("Truth is found")
} else {
  print("Truth is not found")
}

#3. Switch statement#
#switch(expression, case1, case2, case3....)#
The following rules apply to a switch statement:
1. If the value of expression is not a character string it is coerced to integer.
2. You can have any number of case statements within a switch. Each case is followed
by the value to be compared to and a colon.
3. If the value of the integer is between 1 and nargs()-1 (The max number of
arguments)then the corresponding element of case condition is evaluated and the
result returned.
4. If expression evaluates to a character string then that string is matched (exactly)
to the names of the elements.
5. If there is more than one match, the first matching element is returned.
6. No Default argument is available.
7. In the case of no match, if there is a unnamed element of ... its value is returned.
(If there is more than one such argument an error is returned.)

#Example:
 x <- switch(
    3,
    "first",
    "second",
    "third",
    "fourth"
  )
  print(x)
