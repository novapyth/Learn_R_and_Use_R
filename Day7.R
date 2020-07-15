#Factors#

1. What is factor? It categorize the data and store it in a levels. factor()

# Create a vector as input#
    alpha <- c("East","West","East","North","North","East","West","West","West","East","North")
    print(alpha)
    print(is.factor(alpha))
# Apply the factor function.
    factor_data <- factor(alpha) #convert vector into factor using factor() function#
    print(factor_data)
    print(is.factor(factor_data))

#Factor in a dataframe#
#Create the vectors for data frame.
    height <- c(132,151,162,139,166,147,122)
    weight <- c(48,49,66,53,67,52,40)
    sex <- c("male","male","female","female","male","female","male")
# Create the data frame.
    frame_data <- data.frame(height,weight,sex)
    print(frame_data)
# Test if the sex column is a factor.
    print(is.factor(frame_data$sex))
# Print the gender column so see the levels.
    print(frame_data$sex)


#changing order of the Factors#
    alpha <- c("East","West","East","North","North","East","West","West","West","East","North")
# Create the factors#
    factor_alpha <- factor(alpha)
    print(factor_alpha)
# Apply the factor function with required order of the level#
    new_order_alpha <- factor(factor_alpha,levels = c("East","West","North"))
    print(new_order_alpha)

#Generating factor levels#
#By using gl() function
#syntax: gl(n, k, labels) 
#where n is a number of elements in the integer
#k is the number of replicates of n integers
#label is the number of elements in the integer

    alpha <- gl(3, 4, labels = c("Tampa", "Seattle","Boston"))
    print(alpha)

#DATAFRAME#
What is Dataframe? It is a array-like structure that contains multiple rows and columns with different data types.
The characteristics of a data frame.
 The column names should be non-empty.
 The row names should be unique.
 The data stored in a data frame can be of numeric, factor or character type.
 Each column should contain same number of data items.

# Create the data frame.
    emp.data <- data.frame(
    emp_id = c (1:5),
    emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
    salary = c(623.3,515.2,611.0,729.0,843.25),
    start_date = as.Date(c("2012-01-01","2013-09-23","2014-11-15","2014-05-11","2015-03-27")),
    stringsAsFactors=FALSE
    )
# Print the data frame.
    print(emp.data)
#If  you want to know the structure of the data frame#
    str(emp.data)
#If you want to know the summary of the data frame#
    print(summary(emp.data))
#If you want to extract specific column from the data frame# (datasetname$columnname)
    result <- data.frame(emp.data$emp_name,emp.data$salary)
    print(result)
#If you want to extract the specific rows like first two row with all columns# datasetname[row,column]
    result <- emp.data[1:2,]
    print(result)
#If you want to extract 3rd and 5th row with 2nd and 4th column#
    result <- emp.data[c(3,5),c(2,4)]
    print(result)
#If you want to add column to the dataframe#
    emp.data$dept <- c("IT","Operations","IT","HR","Finance")
    v <- emp.data
    print(v)
#If you want to add extra row to the data frame# for this we need same row size structure and use rbind()#
# Create the first data frame.
    emp.data <- data.frame(
    emp_id = c (1:5),
    emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
    salary = c(623.3,515.2,611.0,729.0,843.25),
    start_date = as.Date(c("2012-01-01","2013-09-23","2014-11-15","2014-05-11","2015-03-27")),
    dept=c("IT","Operations","IT","HR","Finance"),
    stringsAsFactors=FALSE
    )
# Create the second data frame
    emp.newdata <- data.frame(
    emp_id = c (6:8),
    emp_name = c("Rasmi","Pranab","Tusar"),
    salary = c(578.0,722.5,632.8),
    start_date = as.Date(c("2013-05-21","2013-07-30","2014-06-17")),
    dept = c("IT","Operations","Fianance"),
    stringsAsFactors=FALSE
    )
# Bind the two data frames.rbind()
    emp.finaldata <- rbind(emp.data,emp.newdata)
    print(emp.finaldata)


#PACKAGES#
#if you want to check the location of the available packages in R#
    .libPaths()
#If you want to available packages#
    library()
#check currently loaded packages#
    search()
#load packages from CRAN#
    install.packages("XML")
    library(XML)

#Install packages from Bioconductor# link: https://www.bioconductor.org/install/
    if (!requireNamespace("Limma", quietly = TRUE))
      install.packages("Limma")
    BiocManager::install()


#Data Reshaping#
# Create vector objects.
    city <- c("Tampa","Seattle","Hartford","Denver")
    state <- c("FL","WA","CT","CO")
    zipcode <- c(33602,98104,06161,80294)
# Combine above three vectors into one data frame.
    addresses <- cbind(city,state,zipcode)
# Print a header.
    cat("# # # # The First data frame\n")
# Print the data frame.
    print(addresses)
#Merging of the dataframe# we need same column name in merging#
    install.packages("MASS")
    library(MASS)
    print(Pima.te)
    print(Pima.tr)
#merge() syntax:
#merge(x, y, by = intersect(names(x), names(y)),
     # by.x = by, by.y = by, all = FALSE, all.x = all, all.y = all,
     # sort = TRUE, suffixes = c(".x",".y"), no.dups = TRUE,
     # incomparables = NULL, …)
#example#
    merged.Pima <- merge(x=Pima.te, y=Pima.tr,
                     by.x=c("bp", "bmi"),
                     by.y=c("bp", "bmi")
    )
    print(merged.Pima)
    nrow(merged.Pima)
    ncol(merged.Pima)

#Read CSV data#
#Get working directory#
    print(getwd())

#set current working directory#
    setwd("/home/desktop")

#input as CSV file#
#HOMEWORK- 1st save the given data into input.csv#
id,name,salary,start-date,dept
3,Michelle,611,2014-11-15,IT
4,Ryan,729,2014-05-11,HR
5,Gary,843.25,2015-03-27,Finance
6,Nina,578,2013-05-21,IT
7,Simon,632.8,2013-07-30,Operations
8,Guru,722.5,2014-06-17,Finance

#Call the input.csv#
    data <- read.csv("input.csv") #if your data saved in the same working directory, then  you dont need the location  of the file#
    #data1<- read.csv("path location of the input.csv")#
    #data1<- read.csv("/home/desktop/input.csv")# Please specify the location of the file

#Analyze the input.csv#
    data <- read.csv("input.csv")
    print(is.data.frame(input.csv))
    print(nrow(data)) #find the number of rows#
    print(ncol(data)) #find the number of columns#

#get maximum salary#
    sal <-  max(data$salary)

#get the detail of the person with max salary#
    det <- subset(data, salary == max(data$salary)) 

#HOMEWORK2#
#Get all the people working in IT department#
#Get the person who is working in IT dept and his salary must be greater than 600#
#Get the people who joined on or after 2014#
