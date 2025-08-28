#1
setwd("C:\\Users\\thisu\\OneDrive\\Desktop\\ps_lab_05")
getwd()

#2
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE, sep = ",")
head(Delivery_Times)
str(Delivery_Times)
fix(Delivery_Times)


hist(Delivery_Times$Delivery_Time_.minutes., breaks = seq(20, 70, length.out = 10),
     right = FALSE, 
     main = "Histogram of Delivery Times", xlab = "Delivery Time (minutes)", 
     ylab = "Frequency", col = "yellow", border = "black")

#4
# Extract the Delivery Time column
delivery_times <- Delivery_Times$Delivery_Time_.minutes.

# Create histogram object (to get frequencies & breaks)
hist_data <- hist(delivery_times, 
                  breaks = seq(20, 70, length.out = 10), 
                  right = FALSE, 
                  plot = FALSE)

# Compute cumulative frequencies
cum_freq <- cumsum(hist_data$counts)

# Midpoints of class intervals
midpoints <- hist_data$mids

# Plot cumulative frequency polygon (Ogive)
plot(midpoints, cum_freq, 
     type = "o", col = "blue", lwd = 2, pch = 16,
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time (minutes)", 
     ylab = "Cumulative Frequency")

grid()













