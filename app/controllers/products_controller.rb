class ProductsController < ApplicationController
  def index
    @products = cart
  end

  def add_to_cart
    cart << params[:product]
    @products = cart
    render :index
  end

end