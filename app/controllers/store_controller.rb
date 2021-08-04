class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    if session[:counter].nil?
      session[:counter] = 1
      @count = session[:counter]
    else
      session[:counter] += 1
      @count = session[:counter]
    end
  end

 
end
