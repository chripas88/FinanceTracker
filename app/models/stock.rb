class Stock < ApplicationRecord
  # define entity relations between stocks and users
  has_many :user_stocks
  has_many :users, through: :user_stocks
  
  # get stock from DB by symbol
  def self.find_by_ticker(ticker_symbol)
    where(ticker: ticker_symbol).first
  end
  
  # get stock using gem (API) by symbol
  def self.new_from_lookup(ticker_symbol)
    # try - catch
    begin
      looked_up_stock = StockQuote::Stock.quote(ticker_symbol)
      new(name: looked_up_stock.company_name, ticker: looked_up_stock.symbol, last_price: looked_up_stock.latest_price)
    rescue Exception => e
      return nil
    end
  end
  
  # in previous StockQuote version, latest_price value had comma (1,000.00) which had to be dealt with.
  # function not used any more
  def self.strip_commas(number)
    number.gsub(",", "")
  end
  
end
