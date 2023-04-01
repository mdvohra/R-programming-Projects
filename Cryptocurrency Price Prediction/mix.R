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


