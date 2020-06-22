#Basic R script#
# My first program in R Programming#
#myString is a defined variable#
#Print is Built-in function#
myString <- "Hello, World!"
print (myString)

#Enrvoriment of R#
#In contrast to other programming languages such as C and Java in R, the variables are not declared as some data type. The variables are assigned with R-Objects and the data type of the R-object becomes the data type of the variable.
Types of objects
1. Vector
2. list
3. Matrices
4. Arrays
5. factor
6. Dataframe

#create a Vectors#
#Steps involved in creating a vector#
# a. Create a vector. Below fruit is a variable. c() is a function to combine the elements into a vector#
fruit <- c('yallow', 'oval', 3)
print(fruit)
#use to define class of a vector/variable#
class(fruit)

#create a list# 
#list is a function use to create a list#
list1 <- list(mango, 2.3, 6.9)
print(list1)

#create a Matirces. It is a 2D rectangular data#
#matrix is a function use to create a matrix#
Mat1 <- matrix(c("a","a", "b", "b", "c", "c"), nrow = 2, ncol = 3, byrow = FALSE)
print(Mat1)

#To check syntax of functions#
?function-name
example: ?matrix

#create a arrays#
#array is a function use to create a array#
a <- array(Mat1,dim = (3:2))
print(a)
b<- array(c("yellow", "red"), dim = (3,3,2))
print(b)

# Create a factor#
#factor is a function use to create a factor#
apple_color <- c('green', 'red', 'alisha', 'priyanka')
factor_apple <- factor(apple_color)
print(factor_apple)
print(nlevels(factor_apple))

# Dataframe. It is a tabular data type#
#data.frame is a function use to create a Dataframe#
body_index <- data.frame(gender = c("male", "female", "male"), height = c(142, 133, 134), weight = c(81,42,67), age = c(43, 38, 29))
print (body_index)
