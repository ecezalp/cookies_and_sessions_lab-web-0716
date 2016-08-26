class ProductsController < ApplicationController

  def index
    @products = cart
    @product = Product.new
  end

  # def add
  #   cart << Product.create([params[:id]])
  # end

  def create
    # binding.pry
    cart << Product.create(product_params)
    redirect_to root_path
  end

  private

  def product_params
    params.require(:product).permit(:name)
  end

end