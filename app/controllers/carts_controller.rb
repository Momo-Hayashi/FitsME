class CartsController < ApplicationController
  before_action :authenticate_user!

  def index
    @cart = current_user.carts
  end

  def create
    cart = current_user.carts.create(stock_id: params[:stock_id])
    redirect_to carts_path, notice: "#{cart.stock.clothe.name}をカートに登録しました！"
  end

  def update

  end

  def destroy

  end

end
