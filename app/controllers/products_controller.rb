class ProductsController < ApplicationController

  def create
    @product = Product.new
    @product.save

    redirect_to products_path
  end

  def inventory
    @product = Product.find(params[:id])
    render :plain => @product.inventory > 0 ? true : false
  end

  def description
    @product = Product.find(params[:id])
    render :plain => @product.description
  end

  def index
    @products = Product.all
  end

end
