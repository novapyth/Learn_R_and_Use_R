#Enrvoriment of R#
Types of objects
1. Vector
2. list
3. Matrices
4. Arrays
5. factor
6. Dataframe

 
#create a Vectors#
a. Create a vector
mango <- c('yallow', 'oval', 3)
print(mango)
class(mango)
print(class(mango))

#create a list
list1 <- list(mango, 2.3, 6.9)
print(list1)

#create a Matirces
Mat1 <- matrix(c("a","a", "b", "b", "c", "c"), nrow = 2, ncol = 3, byrow = FALSE)
print(Mat1)

#TO check how functions work#
?matrix

#create a arrays
a <- array(Mat1,dim = (3:2))
print(a)
b<- array(c("yellow", "red"), dim = (3,3,2))
print(b)
?array

# Create a factor
apple_color <- c('green', 'red', 'alisha', 'priyanka')
factor_apple <- factor(apple_color)
print(factor_apple)
print(nlevels(factor_apple))

# Dataframe
body_index <- data.frame( gender = c("male", "female", "male"), height = c(142, 133, 134), weight = c(81,42,67), age = c(43, 38, 29))
print (body_index)
