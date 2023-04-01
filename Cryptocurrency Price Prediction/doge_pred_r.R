# Importing the data into R
doge <- read.csv("C:\\Users\\Moh\\Documents\\R_csv\\doge.csv", header = TRUE)

# Converting the date column to a date format
doge$Date <- as.Date(doge$Date, format = "%d-%b")

# Fitting a linear regression model
model <- lm(Price ~ Date, data = doge)

# Summary of the linear regression model
summary(model)

#prediction dataset
doge_pred <- read.csv("C:\\Users\\Moh\\Documents\\R_csv\\pred.csv", header = TRUE)
 

# Converting the date column to a date format
doge_pred$Date <- as.Date(doge_pred$Date, format = "%d-%b")


# Predicting the price values
prediction <- predict(model, newdata = doge_pred)


# Plot Price vs Date
ggplot(doge, aes(x = Date, y = Price)) +
  geom_line() +
  labs(title = "Price vs Date", x = "Date", y = "Price")