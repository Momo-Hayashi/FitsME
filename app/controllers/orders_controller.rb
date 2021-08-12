class OrdersController < ApplicationController
  before_action :authenticate_user!
  def index
    @orders = current_user.orders.order(created_at: :desc)
  end

  def show
    @order = Order.find(params[:id])
  end
end
