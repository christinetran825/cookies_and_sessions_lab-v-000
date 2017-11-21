class ProductsController < ApplicationController
  def index
    @product = cart
  end

  def add
    @product = Product.find(params[:id])
    cart << @product
    render :index
  end

end