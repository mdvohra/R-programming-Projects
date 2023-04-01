# Importing the data into R
solana <- read.csv("C:\\Users\\Moh\\Documents\\R_csv\\Solana.csv", header = TRUE)

# Converting the date column to a date format
solana$Date <- as.Date(solana$Date, format = "%d-%b")

# Fitting a linear regression model
model <- lm(Price ~ Date, data = solana)

# Summary of the linear regression model
summary(model)

#prediction dataset
solana_pred <- read.csv("C:\\Users\\Moh\\Documents\\R_csv\\pred.csv", header = TRUE)


# Converting the date column to a date format
solana_pred$Date <- as.Date(solana_pred$Date, format = "%d-%b")


# Predicting the price values
prediction <- predict(model, newdata = solana_pred)

# Plot Price vs Date
ggplot(solana, aes(x = Date, y = Price)) +
  geom_line() +
  labs(title = "Price vs Date", x = "Date", y = "Price")


