class StoreController < ApplicationController
  skip_before_action :authorize
  include CurrentCart
  before_action :set_cart
  before_action :count_index_visits, only: [:index]
  

  def index
    @products = Product.order(:title)
    @count = session[:counter]
  end

  def count_index_visits
    if session[:counter].nil?
      session[:counter] = 0
    end
    session[:counter] = session[:counter] + 1
    
  end
end
