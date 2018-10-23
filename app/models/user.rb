class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  # define entity relations between users and stocks
  has_many :user_stocks
  has_many :stocks, through: :user_stocks
  
  def full_name
    # return concatenation of first and last name if one if the two exist
    return "#{first_name} #{last_name}".strip if (first_name || last_name)
    # else return anonymous
    "Anonymous"
  end
  
  def stock_already_added?(ticker_symbol)
    # check if stock exists in DB.
    stock = Stock.find_by_ticker(ticker_symbol)
    # if not return false
    return false unless stock
    # check if there is a relation between the user and this stock and return accordingly
    user_stocks.where(stock_id: stock.id).exists?
  end
  
  def under_stock_limit?
    # check if the amount of stocks the user follows is within the limit
    (user_stocks.count < 10)
  end
  
  def can_add_stock?(ticker_symbol)
    # run checks to define if user can follow selected stock
    under_stock_limit? && !stock_already_added?(ticker_symbol)
  end
  
end
