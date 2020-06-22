#LOOPS#
#A loop statement allows us to execute a statement or group of statements multiple times#
#Repeat loop#
1. The basic syntax for creating a repeat loop in R is:
    repeat {        #repeat functions use to execute repeat loop#
      commands
      if(condition){
        break       #Break statement: Terminates the loop statement and transfers execution to the statement immediately following the loop#
      }
    }

#Example#
  v <- c("Hello","loop")
  cnt <- 2
repeat{
  print(v) #COMMANDS#
  cnt <- cnt+1 #COMMANDS#
  if(cnt > 5){
    break
  }}

2. The basic syntax for creating a while loop in R is :
  Define variable
  while (logical_expression) {
    statement
  }

#Example:#
  v <- c("Hello","while loop")
  cnt <- 2
    while (cnt < 7){
  print(v)
  cnt = cnt + 1
}

3. Syntax of for loops
Define vector
for (value in vector) {
  statements
}

#Example:#
  v <- LETTERS[1:10]
for ( i in v (variable)) {
  print(i)
}


#Functions
#Bult in functions#
#Create a sequence (using seq operator) of numbers from 32 to 44#
print(seq(32,44))
#Find mean of numbers from 25 to 82#
print(mean(25:82))
#Find sum of numbers from 41 to 68#
print(sum(41:68))

#if you want to create your own function#
#syntax to define user function#
function_name <- function(arg_1, arg_2, ...) {   #function is itself a function use to create user defined function#
  Function body
}
Example:
# Create a function to print squares of numbers in sequence with an argument#
  a.function <- function(a) {     #function defined with an argument#
    for(i in 1:a) {               #for loop #
      b <- i^2                    # statement#
      print(b)
    }
  }
# Call the function with supplying an argument called (9).
a.function(9)


# Create a function without an argument.
priyan.function <- function() {      #function with no argument ()#
  for(i in 1:9) {
    print(i^2)
  }
}
# Call the function without supplying an argument.
priyan.function()

# Create a function with arguments#
new.function <- function(a,b,c) {
  result <- a*b+c
  print(result)
}
#Call the function by position of arguments#
new.function(4,3,11)
#Call the function by names of the arguments#
new.function(a=11,b=5,c=3)


#Strings#
a<- "r programming"
print(a)
#Manupulating the strings#
a) Concatenating a string- PASTE ()
syntax: paste(..., sep = " ", collapse = NULL)
Following is the description of the parameters used:
1. ... represents any number of arguments to be combined.
2. sep represents any separator between the arguments. It is optional.
3. collapse is used to eliminate the space in between two strings. But not the space within two words of one string.

#Example#
a <- "Hello"
b <- "Priyan"
c <- "Alia"
print (paste(a,b,c))
print (paste(a,b,c, sep= "-"))
print (paste(a,b,c, sep= "-", collapse = NULL))

b) Formatting a string - FORMAT()
The basic syntax for format function is :
format(x, digits, nsmall,scientific,width,justify = c("left", "right", "centre", "none"))
where:
x is the vector input.
digits is the total number of digits displayed.
nsmall is the minimum number of digits to the right of the decimal point.
scientific is set to TRUE to display scientific notation.
width indicates the minimum width to be displayed by padding blanks in the
beginning.
justify is the display of the string to left, right or center.

#Example#
# Total number of digits displayed. Last digit rounded off.
result <- format(23.123456789, digits = 9)
print(result)
# Display numbers in scientific notation.
result <- format(c(6, 13.14521), scientific = TRUE)
print(result)
# The minimum number of digits to the right of the decimal point.
result <- format(23.47, nsmall = 5)
print(result)
# Format treats everything as a string.
result <- format(6)
print(result)
# Numbers are padded with blank in the beginning for width.
result <- format(13.7, width = 6)
print(result)
# Left justify strings.
result <- format("Hello",width = 8, justify = "l")
print(result)
# Justfy string with center.
result <- format("Hello",width = 8, justify = "c")
print(result)
