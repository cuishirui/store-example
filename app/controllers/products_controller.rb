class ProductsController < ApplicationController

  def index
    @products = Product.all
  end
  def show
    @product = Product.find(params[:id])
  end

  def add_to_cart
    @product = Product.find(params[:id])
    if !current_cart.products.include?(@product)
      current_cart.add_product_to_cart(@product)
      @product.quantity-= 1
      @product.save
    end 
      flash[:notice]= "success"
      redirect_to :back
  end
end
