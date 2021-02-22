module CurrentCart

  private

  def set_cart
    #byebug
    @cart = Cart.find(session[:cart_id])
    logger.debug "CART ID #{@cart}"
  rescue ActiveRecord::RecordNotFound
    @cart = Cart.create
    session[:cart_id] = @cart_id
  end
end
