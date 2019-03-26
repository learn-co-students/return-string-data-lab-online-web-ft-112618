class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new

  end

  def create
    @product = Product.create(product_params)
    redirect_to products_path
  end

  def inventory
    inventory_flag = Product.find_by_id(params[:id]).inventory > 0
    render plain: inventory_flag
  end

  def description
    description = Product.find_by_id(params[:id]).description
    render plain: description
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :inventory, :description)
  end
end
