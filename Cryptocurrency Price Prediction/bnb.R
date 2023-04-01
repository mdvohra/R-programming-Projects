# Importing the data into R
bnb <- read.csv("C:\\Users\\Moh\\Documents\\R_csv\\BNB.csv", header = TRUE)

# Converting the date column to a date format
bnb$Date <- as.Date(bnb$Date, format = "%d-%b")

# Fitting a linear regression model
model <- lm(Price ~ Date, data = bnb)

# Summary of the linear regression model
summary(model)

#prediction dataset
bnb_pred <- read.csv("C:\\Users\\Moh\\Documents\\R_csv\\pred.csv", header = TRUE)


# Converting the date column to a date format
bnb_pred$Date <- as.Date(bnb_pred$Date, format = "%d-%b")


# Predicting the price values
prediction <- predict(model, newdata = bnb_pred)

# Plot Price vs Date
ggplot(bnb, aes(x = Date, y = Price)) +
  geom_line() +
  labs(title = "Price vs Date", x = "Date", y = "Price")