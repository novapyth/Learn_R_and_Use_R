#LOOPS same as in Java, python n other programming languages
1. The basic syntax for creating a repeat loop in R is:
    repeat {
      commands
      if(condition){
        break
      }
    }
Example on repeat loop:
  v <- c("Hello","loop")
  cnt <- 2
repeat{
  print(v) #COMMANDS#
  cnt <- cnt+1 #COMMANDS#
  if(cnt > 5){
    break
  }}

2. The basic syntax for creating a while loop in R is :
  Define your variable first
  while (test_expression) {
    statement
  }
Example:
  v <- c("Hello","while loop")
  cnt <- 2
while (cnt < 7){
  print(v)
  cnt = cnt + 1
}

3. Syntax of for loops
define your vector
for (value in vector) {
  statements
}

Example:
  v <- LETTERS[1:10]
for ( i in v (variable)) {
  print(i)
}


#Functions
#Bult in functions
# Create a sequence of numbers from 32 to 44.
print(seq(32,44))
# Find mean of numbers from 25 to 82.
print(mean(25:82))
# Find sum of numbers from 41 to 68.
print(sum(41:68))

#Use these functions: seq(), mean(), max(), sum(x)and paste(...)

#if you want to create your own function
#syntax to define user function.
function_name <- function(arg_1, arg_2, ...) {
  Function body
}

Example:
  # Create a function to print squares of numbers in sequence with an argument.
  alisha.function <- function(a) {
    for(i in 1:a) {
      b <- i^2
      print(b)
    }
  }
# Call the function with supplying an argument.

alisha.function(9)

# Create a function without an argument.
priyanka.function <- function() {
  for(i in 1:9) {
    print(i^2)
  }
}
# Call the function without supplying an argument.
priyanka.function()

# Create a function with arguments.
new.function <- function(a,b,c) {
  result <- a*b+c
  print(result)
}

# Call the function by position of arguments.
new.function(4,3,11)
# Call the function by names of the arguments.
new.function(a=11,b=5,c=3)

#Strings
a<- "r programming"
print(a)
#Manupulating the strings
a) Concatenating a string- PASTE ()
a <- "Hello"
b <- "Priyanka"
c <- "Alia"
print (paste(a,b,c))
print (paste(a,b,c, sep= "-"))
print (paste(a,b,c, sep= "-", collapse = NULL))

b) Formatting a string - FORMAT()
a<- format(12.38589, digits = 4 )
print(a)
