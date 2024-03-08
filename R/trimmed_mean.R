set.seed(1234)

#create random sampling for integers with replacement 
x_int <- sample(1:100, 99, replace = TRUE)
print(x_int)

#find the mean
reg_mean <- mean(x_int)
print(paste("Mean for integers=", reg_mean))

#find the trim mean
trim_mean <- mean(x_int, trim = 0.05)
print(paste("Trimmed mean for intergers=", trim_mean))

##create random sampling for floats with replacement 
x_float <- round(runif(100, min = 1, max = 99),2)
print(x_float)

#find the mean for floats
reg_mean_float <- mean(x_float)
print(paste("Mean for floats=", reg_mean_float))

#find the trim mean for floats
trim_mean_float <- mean(x_float, trim = 0.05)
print(paste("Trimmed mean for floats=", trim_mean_float))