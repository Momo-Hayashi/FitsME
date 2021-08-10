class CartsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_cart, only: %i[ index pay complete ]

  def index
  end

  def create
    cart = current_user.carts.create(stock_id: params[:stock_id])
    redirect_to carts_path, notice: "#{cart.stock.clothe.name}をカートに登録しました！"
  end

  def update
  end

  def pay
    if params[:cart].blank?
      redirect_to carts_path, notice: "住所の登録/選択をお願いします"
    else
      @address = current_user.addresses.find(params[:cart][:address_id])
    end
  end

  def complete
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
    Payjp::Charge.create(
      :amount => params[:cart][:total_price],
      :card => params['payjp-token'],
      :currency => 'jpy'
    )

    @order = Order.create(
      user_id: @user.id,
      price: params[:cart][:total_price],
      shipping_to: params[:cart][:address_id]
    )

    @carts.each do |item|
      OrderStock.create(
        stock_id: item.stock.id,
        order_id: @order.id,
        amount: 1,
      )
      @stock = item.stock
      new_quantity = @stock.quantity - 1
      @stock.update_attribute( :quantity, new_quantity )
      item.destroy
    end

    redirect_to orders_path, notice: "購入処理が完了しました！ご利用ありがとうございました"

  end

  def destroy
    cart = current_user.carts.find_by(id: params[:id]).destroy
    redirect_to carts_path, notice: "#{cart.stock.clothe.name}をカートから削除しました！"
  end

  private

  def set_cart
    @carts = current_user.carts
    @user = current_user
    @addresses = @user.addresses
  end

  def cart_params
    params.require(:cart).permit(:address_id)
  end

end
