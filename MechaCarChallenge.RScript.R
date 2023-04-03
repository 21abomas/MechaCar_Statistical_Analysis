# Load the dplyr package using the library() function.

library(dplyr)

# Import the MechaCar_mpg.csv file using the read.csv() function and save it as a dataframe called "MechaCar_mpg."

MechaCar_mpg <- read.csv("MechaCar_mpg.csv")

# Perform a linear regression analysis on the MechaCar_mpg dataframe using the lm() function to predict mpg based on several variables. Use all six variables (i.e., columns) and add the MechaCar_mpg dataframe as the data parameter.

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg)


# Use the summary() function to obtain the p-value and r-squared value for the linear regression model.

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg))


# Import the Suspension_Coil.csv file using the read.csv() function and save it as a dataframe called "Suspension_Coil".

Suspension_Coil <- read.csv("Suspension_Coil.csv")


#Use the summarize() function to create a total_summary dataframe that shows the mean, median, variance, and standard deviation of the suspension coil's PSI column.

total_summary <- Suspension_Coil %>% summarize(mean_PSI = mean(PSI), median_PSI = median(PSI), var_PSI = var(PSI), sd_PSI = sd(PSI))

# Use the group_by() and summarize() functions to create a lot_summary dataframe that shows the mean, median, variance, and standard deviation of the suspension coil's PSI column for each manufacturing lot.
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(mean_PSI = mean(PSI), median_PSI = median(PSI), var_PSI = var(PSI), sd_PSI = sd(PSI))

