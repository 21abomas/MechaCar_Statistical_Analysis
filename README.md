# MechaCar Challenge

This project aims to analyze and interpret data from the MechaCar_mpg.csv and Suspension_Coil.csv datasets using R.

## Linear Regression to Predict MPG

A linear model was created to predict the mpg of MechaCar prototypes using variables from the MechaCar_mpg.csv file. The lm() function was used to perform linear regression, and it was found that vehicle length and ground clearance contributed to a non-random amount of variance in mpg values. The p-value of the linear regression model was 5.35e-11, lower than the significance level of 0.05, indicating that the null hypothesis that the slope of the linear model is zero can be rejected. The r-squared value of the model was 0.7149, showing that 71.49% of the variability in mpg can be explained by the model. The linear model is an effective predictor of mpg for MechaCar prototypes.

### Linear Regression Output
![Linear Regression to Predict MPG](https://user-images.githubusercontent.com/115948377/229574631-96c5b4f0-409a-4652-9e41-cecce99a81ed.png)



## Summary Statistics on Suspension Coils
In this segment, we aimed to create a summary statistics table for the suspension coil's PSI continuous variable across all manufacturing lots and for each lot individually. We created two data frames, total_summary and lot_summary, using the summarize() function and group_by() and the summarize() functions, respectively.

The total_summary data frame shows that the variance of the suspension coils across all manufacturing lots is 62.29, which is below the design specification of 100 pounds per square inch.

However, the lot_summary data frame shows that lot 3 has a variance of 170.29, which exceeds the design specification. Lots 1 and 2 have variances of 0.98 and 7.47, respectively, which meet the design specification.

### Total Summary Dataframe

![totatl_summary](https://user-images.githubusercontent.com/115948377/229574164-85feeb24-f019-44ee-bd0f-9677b432d682.png)

### Lot Summary Dataframe


![lot_summary](https://user-images.githubusercontent.com/115948377/229574135-3f4c305c-17fe-4b89-b1b3-f37e0f59cde1.png)

Therefore, we can conclude that the current manufacturing data meet the design specification for all manufacturing lots in total but do not meet the specification for manufacturing lot 3 individually.




## T-Tests on Suspension Coils
In this section, we performed t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch (PSI). We used the t.test() function in R and subset() argument to perform the tests.

Results
The t-test for all manufacturing lots showed a p-value of 0.4779, indicating that we fail to reject the null hypothesis. Therefore, the PSI for all manufacturing lots is not statistically different from the population mean of 1,500 PSI.

The t-test for Manufacturing Lot 1 showed a p-value of 0.3036, indicating that we fail to reject the null hypothesis. Therefore, the PSI for Manufacturing Lot 1 is not statistically different from the population mean of 1,500 PSI.

The t-test for Manufacturing Lot 2 showed a p-value of 0.8201, indicating that we fail to reject the null hypothesis. Therefore, the PSI for Manufacturing Lot 2 is not statistically different from the population mean of 1,500 PSI.

The t-test for Manufacturing Lot 3 showed a p-value of 0.08199, indicating that we can reject the null hypothesis. Therefore, the PSI for Manufacturing Lot 3 is statistically different from the population mean of 1,500 PSI.

Based on these results, we can conclude that Manufacturing Lot 3 has a statistically significant difference in PSI compared to the population mean, while the other manufacturing lots do not.

### Screenshots
t-test-all-manufacturing-lots

![RStudio 4_3_2023 12_26_21 PM](https://user-images.githubusercontent.com/115948377/229571424-bd67cdec-a4e4-4cf1-aae6-54295567f3f6.png)


t-test-manufacturing-lot-1

![RStudio 4_3_2023 12_26_21 PM lot1](https://user-images.githubusercontent.com/115948377/229571396-b69bd51e-c173-4ca7-a3c6-465b692cdc4a.png)


t-test-manufacturing-lot-2

![RStudio 4_3_2023 12_26_21 PM lot 2](https://user-images.githubusercontent.com/115948377/229571447-14530a6b-f112-4325-ba58-afd67e49b9b4.png)

t-test-manufacturing-lot-3

![RStudio 4_3_2023 12_26_21 PM lot 3](https://user-images.githubusercontent.com/115948377/229571478-7549ce4f-bcb7-424e-94f0-2b80d88d600f.png)

## Study Design: MechaCar vs Competition

In this study, we aim to compare the performance of MechaCar vehicles against vehicles from other manufacturers in terms of fuel efficiency. Fuel efficiency is an important factor for many customers, particularly with rising gas prices. We will collect fuel efficiency data from competition car manufacturers over the last five years and use it to compare with MechaCar.

### Metrics:
We will collect data on the following metrics:

* City and highway fuel efficiency (dependent variable)
* Horsepower (independent variable)
* AWD capabilities (independent variable)
* MPG (gasoline efficiency) (independent variable)

### Null and Alternative Hypotheses:
The null hypothesis (Ho) states that on defined metrics, there is no statistically significant difference between MechaCar and the competitors. The alternative hypothesis (Ha) states that on defined metrics.

### Statistical Tests:
We will use a t-test to compare each MechaCar metric against the same metric from the competition data. A t-test is appropriate for this study because we are comparing means between two groups.

### Data Needed:
To run the statistical test, we need to collect fuel efficiency data from competition car manufacturers. We also need to collect data on the independent variables - horsepowe, AWD capabilities, and MPG - for both MechaCar and the competition.

### Resources
* Data Source: MechaCar_mpg.csv, Suspension_Coil.csv
* Software: RStudio
