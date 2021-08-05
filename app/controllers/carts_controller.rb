class CartsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_cart, only: %i[ index purchase pay complete ]

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
    @user.update_attributes(
      first_name: params[:user][:first_name],
      last_name: params[:user][:last_name],
      postcode: params[:user][:postcode],
      prefecture_code: params[:user][:prefecture_code],
      address_city: params[:user][:address_city],
      address_street: params[:user][:address_street],
      address_building: params[:user][:address_building])
  end

  def complete
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
    Payjp::Charge.create(
      :amount => params[:cart][:total_price],
      :card => params['payjp-token'],
      :currency => 'jpy'
    )

    Order.create(
      user_id: @user.id,
      clothe_id: @carts.pluck(:stock_id),
      price: params[:cart][:total_price],
      amount: 1,
      zipcode: @user.postcode,
      prefecture: @user.prefecture_code,
      city: @user.address_city,
      following_address: '@user.address_street+@user.address_building'
    )
    binding.irb

    @carts.each do |cart|
      @stock = cart.stock
      new_quantity = @stock.quantity - 1
      @stock.update_attribute( :quantity, new_quantity )
      cart.destroy
    end

  end

  def destroy
    cart = current_user.carts.find_by(id: params[:id]).destroy
    redirect_to carts_path, notice: "#{cart.stock.clothe.name}をカートから削除しました！"
  end

  private

  def set_cart
    @carts = current_user.carts
    @user = current_user
  end

end
