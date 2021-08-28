class CartsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_cart, only: %i[ index pay confirm complete ]

  def index ;  end

  def create
    @stock = Stock.find(params[:stock_id])
    @carts = current_user.carts

    if @carts.pluck(:stock_id).include?(@stock.id)
      @cart = @carts.find_by(stock_id: @stock.id)
      if @cart.amount == @stock.quantity
        redirect_to carts_path, alert: "商品の在庫が足りず、カート内の個数を増やせません..."
      else
        new_amount = @cart.amount + 1
        @cart.update_attributes(amount: new_amount)
        redirect_to carts_path, notice: "#{@cart.stock.clothe.name}の注文数を1点増やしました！"
      end
    else
      @cart = current_user.carts.create(stock_id: @stock.id)
      redirect_to carts_path, notice: "#{@cart.stock.clothe.name}をカートに登録しました！"
    end

  end

  def confirm;  end

  def pay
    if (params[:cart][:using_points]).to_i > @user.points
      redirect_to cart_confirm_path, alert: '保有ポイント数以上のポイントはご利用できません'
    elsif params[:cart][:address_ids].blank?
      redirect_to cart_confirm_path, alert: "住所の登録/選択をお願いします"
    elsif params[:cart][:address_ids].count > 1
      redirect_to cart_confirm_path, alert: "住所は一つしか選択できません。"
    else
      @address = current_user.addresses.find(params[:cart][:address_ids])
      @address = @address.first
    end
    @total_price = (params[:cart][:total_price]).to_i
  end

  def complete
    # ActiveRecord::Base.transaction do
      @order = Order.new_order(@user.id, params[:cart][:address_id], params[:cart][:total_price],
         params[:cart][:used_points], params[:cart][:paid_price])

      @carts.each do |item|
        OrderStock.create(stock_id: item.stock.id, order_id: @order.id, amount: item.amount)
        @stock = item.stock
        new_quantity = @stock.quantity - item.amount
        @stock.update_attribute( :quantity, new_quantity )
        item.destroy
      end

      @user.point_update(params[:cart][:paid_price], params[:cart][:used_points], @user.id)

      Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
      Payjp::Charge.create(
        :amount => params[:cart][:paid_price],
        :card => params['payjp-token'],
        :currency => 'jpy'
      )
    # end
    redirect_to orders_path, notice: "購入処理が完了しました！商品の到着を楽しみにお待ちください：）"
  end

  def update
    @cart = current_user.carts.find_by(id: params[:id])
    @stock = Stock.find(@cart.stock_id)

    if params[:cart][:amount].to_i > @stock.quantity
      redirect_to carts_path, alert: "商品の在庫数が足りず、カート内の個数を増やせません..."
    else
      @cart.update_attributes(amount: params[:cart][:amount])
      redirect_to carts_path, notice: "カートの個数を更新しました！"
    end
  end

  def destroy
    @cart = current_user.carts.find_by(id: params[:id]).destroy
    redirect_to carts_path, notice: "#{@cart.stock.clothe.name}をカートから削除しました！"
  end

  private

  def set_cart
    @carts = current_user.carts
    @user = current_user
    @addresses = @user.addresses
  end

  def cart_params
    params.require(:cart).permit(:amount, :total_price, :using_points, address_ids:[])
  end

end
