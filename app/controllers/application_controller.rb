class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def self.cart
    @item = Item.find(params[:id])
    cart = session[:cart] || []
    cart << @item.id
    session[:cart] = cart
  end
  
end
