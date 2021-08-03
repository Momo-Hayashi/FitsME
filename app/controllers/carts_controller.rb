class CartsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_cart, only: %i[ index purchase pay ]

  def index
  end

  def create
    cart = current_user.carts.create(stock_id: params[:stock_id])
    redirect_to carts_path, notice: "#{cart.stock.clothe.name}をカートに登録しました！"
  end

  def update

  end

  def purchase
  end

  def pay
  end

  def complete
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
    Payjp::Charge.create(
      :amount => params[:cart][:total_price],
      :card => params['payjp-token'],
      :currency => 'jpy'
    )

    @carts.each do |cart|
      @stock = cart.stock
      new_quantity = @stock.quantity - 1
      @stock.update_attribute( :quantity, new_quantity )
      cart.destroy
    end

    order = Order.new(
      user_id: current_user,
      clothe_id: @stock.id,
      price: @clothe.price,
      amount: 1,
      # zipcode: ,
      # prefecture: ,
      # city: ,
      # following_address: ""
    )
  end

  def destroy
    cart = current_user.carts.find_by(id: params[:id]).destroy
    redirect_to carts_path, notice: "#{cart.stock.clothe.name}をカートから削除しました！"
  end

  private

  def set_cart
    @carts = current_user.carts
  end

end
