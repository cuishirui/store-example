class CartsController < ApplicationController

  def clean
    current_cart.clean!
    flash[:warning] = "cleaned cart"
    redirect_to carts_path
  end
end
