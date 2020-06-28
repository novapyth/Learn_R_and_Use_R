#Matrices#

#Syntax# Creating a matrices#
matrix(data, nrow, ncol, byrow, dimnames)
# Elements are arranged sequentially by row#
M <- matrix(c(3:14), nrow=4, byrow=TRUE)
print(M)
# Elements are arranged sequentially by column#
N <- matrix(c(3:14), nrow=4, byrow=FALSE)
print(N)
# Define the column and row names#
rownames = c("row1", "row2", "row3", "row4")
colnames = c("col1", "col2", "col3")
P <- matrix(c(3:14), nrow=4, byrow=TRUE, dimnames=list(rownames, colnames))
print(P)

#Accessing Elements of a Matrix#
# Define the column and row names.
rownames = c("row1", "row2", "row3", "row4")
colnames = c("col1", "col2", "col3")
# Create the matrix.
P <- matrix(c(3:14), nrow=4, byrow=TRUE, dimnames=list(rownames, colnames))
# Access the element at 3rd column and 1st row.
#Syntax: assignedMatrix[row_index, column_index]
print(P[1,3])
# Access the element at 2nd column and 4th row.
print(P[4,2])
# Access only the 2nd row.
print(P[2,])
# Access only the 3rd column.
print(P[,3])

#Matrix Computations#
# Create two 2x3 matrices.using matrix()
matrix1 <- matrix(c(3, 9, -1, 4, 2, 6), nrow=2)
print(matrix1)
matrix2 <- matrix(c(5, 2, 0, 9, 3, 4), nrow=2)
print(matrix2)
# Add the matrices.
result <- matrix1 + matrix2
cat("Result of addition","\n")
print(result)
# Subtract the matrices
result <- matrix1 - matrix2
cat("Result of subtraction","\n")
print(result)

#Matrix Multiplication & Division#
# Create two 2x3 matrices.
matrix1 <- matrix(c(3, 9, -1, 4, 2, 6), nrow=2)
print(matrix1)
matrix2 <- matrix(c(5, 2, 0, 9, 3, 4), nrow=2)
print(matrix2)
# Multiply the matrices.
result <- matrix1 * matrix2
cat("Result of multiplication","\n")
print(result)
# Divide the matrices
result <- matrix1 / matrix2
cat("Result of division","\n")
print(result)

#Arrays#
#syntax: array(data, dim = number of the dimensions , dimnames = namesof the dimension)#
vector1 <- c(5,9,3,5)
vector2 <- c(10,11,12,13,14,15)
array1 <- array(c(vector1, vector2), dim = c(3,3,2))
print(array1)

#Name to the row and the column#
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)
column.names <- c("COL1","COL2","COL3")
row.names <- c("ROW1","ROW2","ROW3")
matrix.names <- c("Matrix1","Matrix2")
result <- array(c(vector1, vector2), dim = c(3,3,2), dimnames = list (column.names, row.names, matrix.names))
print(result)

#Accessing the elements inside the array#
syntax: definedarray[row,column,whichmatrix/array]
print(result[3,,2])
print(result[1,3,1])

#Arrays manipulations#
# Create two vectors of different lengths.
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)
# Take these vectors as input to the array.
array1 <- array(c(vector1,vector2),dim=c(3,3,2))
# Create two vectors of different lengths.
vector3 <- c(9,1,0)
vector4 <- c(6,0,11,3,14,1,2,6,9)
array2 <- array(c(vector1,vector2),dim=c(3,3,2))
# create matrices from these arrays.
matrix1 <- array1[,,2]
matrix2 <- array2[,,2]
# Add the matrices.
result <- matrix1+matrix2
print(result)

#Calculations Across Array Elements#Using Apply function#
#syntax: apply (x, margin, FUN = )#
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)
array1 <- array(c(vector1, vector2), dim = c(3,3,2))
print(array1)
output <- apply(array1, c(1), sum)
print(output)

#Factors#
#Dataframe#
