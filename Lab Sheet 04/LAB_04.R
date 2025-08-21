#1
# Set working directory
setwd("C:\\Users\\IT24103586\\Desktop\\IT24103586")
getwd()

# Import the dataset
branch_data <- read.table("Exercise.txt", header = TRUE,sep = ",")

#2
# View the dataset
str(branch_data)

#3
boxplot(branch_data$Sales, 
        main = "Boxplot of Sales", 
        ylab = "Sales Amount", 
        col = "lightblue", 
        border = "black")

#4
summary(branch_data$Advertising_X2)
IQR(branch_data$Advertising_X2)

#5
get.outliers <- function(z) {
  q1 <- quantile(z)[2]
  q3 <- quantile(z)[4]
  
  iqr <- q3 - q1
  
  ub <- q3 + 1.5 * iqr
  ib <- q1 - 1.5 * iqr
  
  print(paste("Upper Bound =", ub))
  print(paste("Lower Bound =", ib))
  
  outliers <- sort(z[z < ib | z > ub])
  
  if (length(outliers) > 0) {
    print(paste("Outliers:", paste(outliers, collapse = ",")))
  } else {
    print("No outliers detected.")
  }
}
get.outliers(branch_data$Years_X3)













