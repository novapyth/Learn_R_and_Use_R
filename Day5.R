#Vector Manipulation#
# Create two vectors. Here V1 and V2 are of same length
  v1 <- c(3,8,4,5,0,11)
  v2 <- c(4,11,0,8,1,2)
# Vector addition.
  add.result <- v1+v2
  print(add.result)
# Vector substraction.
  sub.result <- v1-v2
  print(sub.result)
# Vector multiplication.
  multi.result <- v1*v2
  print(multi.result)
# Vector division.
  divi.result <- v1/v2
  print(divi.result)

#Vector Element Recycling# what if vectors are not of same length
  v1 <- c(3,8,4,5,0,11)
  v2 <- c(4)
# V2 becomes c(4,11,4,11,4,11)
  add.result <- v1+v2
  print(add.result)
  sub.result <- v1-v2
  print(sub.result)

#Vector Element Sorting by using Sort () function#
  v <- c(3,8,4,5,0,11, -9, 304)
# Sort the elements of the vector.
  sort.result <- sort(v)
  print(sort.result)
# Sort the elements in the reverse order.
  revsort.result <- sort(v, decreasing = TRUE)
  print(revsort.result)
# Sorting character vectors alphabetically.
  v <- c("Red","Blue","yellow","violet")
  sort.result <- sort(v)
  print(sort.result)
# Sorting character vectors in reverse order.
  revsort.result <- sort(v, decreasing = TRUE)
  print(revsort.result)
#List# It contains strings, numbers, vectors, and a logical values.
#Create a list#
#Syntax: varialbe <- list(list1, list2, list3,.....)
  list_data <- list("red", "Blue", c(2,4,21), TRUE, 21.9, 77.9, 119.7)
  print(list_data)

#giving some heading to the list elements#
  list_data <- list(c("red", "blue", "Green"), matrix(c(3,9,6,8), nrow=2), list("January", 12.3))
  names(list_data) <- c("1st quarter", "Matrix", "A inner_list", "abhb")
  print(list_data)

#Accessing the List elements
  list_data <- list(c("red", "blue", "Green"), matrix(c(3,9,6,8), nrow=2), list("January", 12.3))
  names(list_data) <- c("1st quarter", "Matrix", "A inner_list", "abhb")
  print(list_data)
#if i want to access 1st element of the list# based on index
  print(list_data[1])
#Access the elements in the list using the name of the element.#based on the name#
#syntax: variable_name=dataname$nameoftheselectedcolumnfromthedata#
  print(list_data$Matrix)

#Manipulating the list elements#
#Add element to the list#
  list_data[4] <- "New element"
  print(list_data[4])
#Remove the last element#
  list_data[4] <- NULL

#update the 3rd element#
  list_data[3] <- "Updated element"
  print(list_data[3])

#Merging the list#
  list1 <- list(2,3,4)
  list2 <- list("A", "B", "c")
  merged.list <- c(list1, list2)
  print(merged.list)

#Convert list to vector#
  list1 <- list(1:5)
  print(list1)
  list2 <- list (10:16)
  print(list2)
#Use unlist function to convert list into vectors#
  v1 <- unlist (list1)
  v2 <- unlist(list2)
  print(v1)
  print(v2)

