class OrdersController < ApplicationController
  def index
    @orders = current_user.orders.order(created_at: :desc)
  end

  def show
    @order = Order.find(params[:id])
    @address = Address.find(@order.shipping_to)
  end
end
