class UserStocksController < ApplicationController
  
  def create
    # first search in DB if stock already exists
    stock = Stock.find_by_ticker(params[:stock_ticker])
    # if stock does not exist
    if stock.blank?
      # search stock via gem (API)
      stock = Stock.new_from_lookup(params[:stock_ticker])
      # add stock to DB
      stock.save
    end
    # create user-stock relation
    @user_stock = UserStock.create(user: current_user, stock: stock)
    flash[:success] = "Stock #{@user_stock.stock.name} was successfully added to portfolio"
    redirect_to my_portfolio_path
  end
  
  def destroy
    # get stock from DB
    stock = Stock.find(params[:id])
    # get user-stock relation from DB
    @user_stock = UserStock.where(user_id: current_user.id, stock_id: stock.id).first
    # delete user-stock relation
    @user_stock.destroy
    flash[:notice] = "Stock #{@user_stock.stock.name} was successfully removed from portfolio."
    redirect_to my_portfolio_path
  end
  
end
