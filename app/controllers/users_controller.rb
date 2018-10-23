class UsersController < ApplicationController
  
  def my_portfolio
    # create necessary variables
    @user = current_user
    @user_stocks = current_user.stocks
  end
  
end