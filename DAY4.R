c) counting a characters in a stringi
Syntax: nchar(x)
result <- nchar("Count the number of characters")
print(result)

d) Changing the case - toupper() & tolower() functions
# Changing to Uppercase.
result <- toupper("Changing To Upper")
print(result)
# Changing to lower case.
result <- tolower("Changing To Lower")
print(result)

e) Extracting parts of a string - substring() function 
Syntax: substring(x,first,last)
# Extract characters from 5th to 7th position.
result <- substring("Extract", 5, 7)
print(result)

#VECTORS#
#We learned creating vector in Day1# Next we will learn how to play with Vectors#
# Accessing vector elements using position#
t <- c("Sun","Mon","Tue","Wed","Thurs","Fri","Sat")
u <- t[c(2,3,6)]
print(u)
# Accessing vector elements using logical indexing#
v <- t[c(TRUE,FALSE,FALSE,FALSE,FALSE,TRUE,FALSE)]
print(v)
# Accessing vector elements using negative indexing
x <- t[c(-2,-5)]
print(x)
# Accessing vector elements using 0/1 indexing.
y <- t[c(0,0,0,0,0,0,1)]
print(y)

#Manipulating Vector#
# Create two vectors#
v1 <- c(3,8,4,5,0,11)
v2 <- c(4,11,0,8,1,2)
# Vector addition. 
Two vectors of same length can be added, subtracted, multiplied or divided giving the result as a vector output.

add.result <- v1+v2
print(add.result)
# Vector substraction#
sub.result <- v1-v2
print(sub.result)
# Vector multiplication#
multi.result <- v1*v2
print(multi.result)
# Vector division#
divi.result <- v1/v2
print(divi.result)

#Vector Element Recycling#
If we apply arithmetic operations to two vectors of unequal length, then the elements of the shorter vector are recycled to complete the operations
v1 <- c(3,8,4,5,0,11)
v2 <- c(4,11)
# V2 becomes c(4,11,4,11,4,11)#
add.result <- v1+v2
print(add.result)
sub.result <- v1-v2
print(sub.result)

#Vector Element Sorting#
Elements in a vector can be sorted using the sort() function.
#create a vector#
v <- c(3,8,4,5,0,11, -9, 304)
# Sort the elements of the vector#
sort.result <- sort(v)
print(sort.result)
# Sort the elements in the reverse order#
revsort.result <- sort(v, decreasing = TRUE)
print(revsort.result)
# Sorting character vectors#
v <- c("Red","Blue","yellow","violet")
sort.result <- sort(v)
print(sort.result)
# Sorting character vectors in reverse order#
revsort.result <- sort(v, decreasing = TRUE)
print(revsort.result)
