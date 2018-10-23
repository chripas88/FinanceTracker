class StocksController < ApplicationController
  
  def search
    # handle empty form input
    if params[:stock].blank?
      flash.now[:danger] = "You have entered an empty search string."
    else
      @stock = Stock.new_from_lookup(params[:stock])
      # handle incorrect input
      flash.now[:danger] = "You have entered an incorrect stock symbol." unless @stock
    end
    # render result partial only
    respond_to do |format|
      format.js { render partial: 'users/result' }
    end
  end
  
end