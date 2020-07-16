#If you want to save subset into another CSV file#
# Create a data frame.
  data <- read.csv("input.csv")
  retval <- subset(data, as.Date(start_date) > as.Date("2014-01-01"))
# Write filtered data into a new file usign write.csv() function
  write.csv(retval,"output.csv")
  newdata <- read.csv("output.csv") #load the given CSV file#
  print(newdata)
# Write filtered data into a new file.
  write.csv(retval,"output.csv", row.names=FALSE) #with row.names False means remove redundant column from the dataset#
  newdata <- read.csv("output.csv")
  print(newdata)

# EXCEL file#
  install.packages("xlsx")
# Verify the package is installed.
  any(grepl("xlsx",installed.packages()))
# Load the library into R workspace.
  library("xlsx")
#Copy and paste the given data into excel file named as Sheet1#
  id,name,salary,start-date,dept
  3,Michelle,611,2014-11-15,IT
  4,Ryan,729,2014-05-11,HR
  5,Gary,843.25,2015-03-27,Finance
  6,Nina,578,2013-05-21,IT
  7,Simon,632.8,2013-07-30,Operations
  8,Guru,722.5,2014-06-17,Finance
  
# Read the first worksheet in the file input.xlsx.
  data <- read.xlsx("input.xlsx", sheetIndex = 1) #If working in the same directory#
  data <- read.xlsx("location of the xlsx file", sheetIndex = 1) #if not working in the same directory#
  print(data)
  
#Read Tab separated file#
#Read Semi colon separated files#

# WEB based Data#
#following packages needed to get data from the web server#
  install.packages("RCurl")
  install.packages("XML")
  install.packages("stringr")
  install.packages("pylr")
# Read the URL.
  url <- "http://www.geos.ed.ac.uk/~weather/jcmb_ws/"
# Gather the html links present in the webpage.
  links <- getHTMLLinks(url)
# Identify only the links which point to the JCMB 2015 files.
  filenames <- links[str_detect(links, "JCMB_2015")]
# Store the file names as a list.
  filenames_list <- as.list(filenames)
# Create a function to download the files by passing the URL and filename list.
  downloadcsv <- function (mainurl,filename){
    filedetails <- str_c(mainurl,filename)
    download.file(filedetails,filename)
  }
# Now apply the l_ply function and save the files into the current R working
  directory.
  l_ply(filenames,downloadcsv,mainurl="http://www.geos.ed.ac.uk/~weather/jcmb_ws/")

#Visualization#
#Pie Chart#
Using pie functions, user can easily create pie chart
  Syntax: pie(x, labels, radius, main, col, clockwise)
  where,
  x is a vector containing the numeric values used in the pie chart.
  labels is used to give description to the slices.
  radius indicates the radius of the circle of the pie chart.(value between -1 and +1).
  main indicates the title of the chart.
  col indicates the color palette.
  clockwise is a logical value indicating if the slices are drawn clockwise or anti
  clockwise.
# Create data for the graph.
  x <- c(21, 62, 10, 53)
  labels <- c("London", "New York", "Singapore", "Mumbai")
# Give the chart file a name.
  png(file = "city.jpg")
# Plot the chart.
  pie(x,labels)
# Save the file.
  dev.off()
# Plot the chart with title and rainbow color pallet.
  pie(x, labels, main="City pie chart", col=rainbow(length(x)))
 # Save the file.
  dev.off()
  
#If user wants to show percentage of the pie with side labels#
# Create data for the graph.
  x <- c(21, 62, 10,53)
  labels <- c("London","New York","Singapore","Mumbai")
  piepercent<- round(100*x/sum(x), 1)
# Give the chart file a name.
  png(file = "city_percentage_legends.jpg")
# Plot the chart.
  pie(x, labels=piepercent, main="City pie chart",col=rainbow(length(x)))
  legend("topright", c("London","New York","Singapore","Mumbai"), cex=0.8, fill=rainbow(length(x)))
# Save the file.
  dev.off()
  
#3D pie chart#
done by using package plotrix and this package has function named as pie3D.
# Get the library.
  library(plotrix)
# Create data for the graph.
  x <-c(21, 62, 10,53)
  lbl <-c("London","New York","Singapore","Mumbai")
# Give the chart file a name.
  png(file = "3d_pie_chart.jpg")
# Plot the chart.
  pie3D(x,labels=lbl,explode=0.1, main="Pie Chart of Countries ")
# Save the file.
  dev.off()

#BAR PLOTS#
for barplot inbuilt function is used called barplot()
Syntax: barplot(H,xlab,ylab,main, names.arg,col)
where,
  H is a vector or matrix containing numeric values used in bar chart.
  xlab is the label for x axis.
  ylab is the label for y axis.
  main is the title of the bar chart.
  names.arg is a vector of names appearing under each bar.
  col is used to give colors to the bars in the graph.
# Create the data for the chart.
  H <- c(7,12,28,3,41)
# Give the chart file a name.
  png(file = "barchart.png")
# Plot the bar chart.
  barplot(H)
  dev.off()
  
#If user need bar plot colors, tiles#
# Create the data for the chart.
  H <- c(7,12,28,3,41)
  M <- c("Mar","Apr","May","Jun","Jul")
# Give the chart file a name.
  png(file = "barchart_months_revenue.png")
# Plot the bar chart.
  barplot(H,names.arg=M,xlab="Month",ylab="Revenue",col="blue",
          main="Revenue chart",border="red")
# Save the file.
  dev.off()
  
#Grouped and staked bar plot#
# Create the input vectors.
  colors <- c("green","orange","brown")
  months <- c("Mar","Apr","May","Jun","Jul")
  regions <- c("East","West","North")
# Create the matrix of the values.
  Values <- matrix(c(2,9,3,11,9,4,8,7,3,12,5,2,8,10,11),nrow=3,ncol=5,byrow=TRUE)
# Give the chart file a name.
  png(file = "barchart_stacked.png")
# Create the bar chart.
  barplot(Values,main="total revenue",names.arg=months,xlab="month",ylab="revenue",col=colors)
# Add the legend to the chart.
  legend("topleft", regions, cex=1.3, fill=colors)
# Save the file.
  dev.off()
