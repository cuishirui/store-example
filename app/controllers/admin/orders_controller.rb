class Admin::OrdersController < ApplicationController

  def index
    @orders = Order.order("id DESC")
  end
end
