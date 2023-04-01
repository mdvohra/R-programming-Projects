# Importing the data into R
eth <- read.csv("C:\\Users\\Moh\\Documents\\R_csv\\Ethereum.csv", header = TRUE)

# Converting the date column to a date format
eth$Date <- as.Date(eth$Date, format = "%d-%b")

# Fitting a linear regression model
model <- lm(Price ~ Date, data = eth)

# Summary of the linear regression model
summary(model)

#prediction dataset
eth_pred <- read.csv("C:\\Users\\Moh\\Documents\\R_csv\\pred.csv", header = TRUE)


# Converting the date column to a date format
eth_pred$Date <- as.Date(eth_pred$Date, format = "%d-%b")


# Predicting the price values
prediction <- predict(model, newdata = eth_pred)

# Plot Price vs Date
ggplot(eth, aes(x = Date, y = Price)) +
  geom_line() +
  labs(title = "Price vs Date", x = "Date", y = "Price")