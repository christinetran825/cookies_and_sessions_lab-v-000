class ProductsController < ApplicationController
  def index
  end

  def add
    @product = Product.find(params[:id])
    cart << @product
    render :index
  end

end