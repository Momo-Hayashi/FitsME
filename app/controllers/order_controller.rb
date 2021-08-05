class OrderController < ApplicationController
  def index
    @orders = current_user.orders.order(created_at: :asc)
  end
end
