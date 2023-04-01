library(shiny)
library(ggplot2)
library(dplyr)
library(tidyr)


# Load Bitcoin data
bit <- read.csv("C:\\Users\\Moh\\Documents\\R_csv\\Bitcoin.csv", header = TRUE)
bit$Date <- as.Date(bit$Date, format = "%d-%b")
bit <- bit[, c("Date", "Price")]
colnames(bit) <- c("Date", "Bitcoin Price")

# Load Dogecoin data
doge <- read.csv("C:\\Users\\Moh\\Documents\\R_csv\\doge.csv", header = TRUE)
doge$Date <- as.Date(doge$Date, format = "%d-%b")
doge <- doge[, c("Date", "Price")]
colnames(doge) <- c("Date", "Dogecoin Price")

# Load Ethereum data
eth <- read.csv("C:\\Users\\Moh\\Documents\\R_csv\\Ethereum.csv", header = TRUE)
eth$Date <- as.Date(eth$Date, format = "%d-%b")
eth <- eth[, c("Date", "Price")]
colnames(eth) <- c("Date", "Ethereum Price")

# Load Binance Coin data
bnb <- read.csv("C:\\Users\\Moh\\Documents\\R_csv\\BNB.csv", header = TRUE)
bnb$Date <- as.Date(bnb$Date, format = "%d-%b")
bnb <- bnb[, c("Date", "Price")]
colnames(bnb) <- c("Date", "Binance Coin Price")

# Load Solana data
solana <- read.csv("C:\\Users\\Moh\\Documents\\R_csv\\Solana.csv", header = TRUE)
solana$Date <- as.Date(solana$Date, format = "%d-%b")
solana <- solana[, c("Date", "Price")]
colnames(solana) <- c("Date", "Solana Price")


# Create prediction dataset
pred_dates <- seq(max(bit$Date), max(bit$Date) + 29, by = "month")
pred_df <- data.frame(Date = pred_dates)

#prediction dataset
bnb_pred <- read.csv("C:\\Users\\Moh\\Documents\\R_csv\\pred.csv", header = TRUE)

# Function to fit linear regression model and predict prices
predict_prices <- function(data, pred_data) {
  model <- lm(Price ~ Date, data = data)
  pred_data$Price <- predict(model, newdata = bnb_pred)
  return(pred_data)
}









# Predict prices for each cryptocurrency
bit_pred <- predict_prices(bit, bnb_pred)
doge_pred <- predict_prices(doge, pred_df)
eth_pred <- predict_prices(eth, pred_df)
bnb_pred <- predict_prices(bnb, pred_df)
solana_pred <- predict_prices(solana, pred_df)



                              
                              
                              