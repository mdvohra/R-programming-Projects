# Importing the data into R
bit <- read.csv("C:\\Users\\Moh\\Documents\\R_csv\\Bitcoin.csv", header = TRUE)

# Converting the date column to a date format
bit$Date <- as.Date(bit$Date, format = "%d-%b")

# Fitting a linear regression model
model <- lm(Price ~ Date, data = bit)

# Summary of the linear regression model
summary(model)

#prediction dataset
bit_pred <- read.csv("C:\\Users\\Moh\\Documents\\R_csv\\pred.csv", header = TRUE)

# Converting the date column to a date format
bit_pred$Date <- as.Date(bit_pred$Date, format = "%d-%b")

# Predicting the price values
prediction <- predict(model, newdata = bit_pred)

# create the line graph
plot(bit$Date, bit$Price, type="l", xlab="Date", ylab="Price", main="Price History")

# Plot Price vs Date
ggplot(bit, aes(x = Date, y = Price)) +
  geom_line() +
  labs(title = "Price vs Date", x = "Date", y = "Price")
