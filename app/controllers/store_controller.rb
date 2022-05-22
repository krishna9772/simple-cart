class StoreController < ApplicationController
  
  include CurrentCart
  before_action :set_cart, :countVisit

  def index
    @products = Product.order(:title)
  end

  private 

  def countVisit
    if session[:counter].nil?
      session[:counter] = 1
      @count = session[:counter]
    else
      session[:counter] += 1
      @count = session[:counter]
    end
  end

 
end
