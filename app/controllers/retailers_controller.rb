# frozen_string_literal: true

class RetailersController < ApplicationController
  before_action :all_orders_retailer_has, only: %i[orders detail]
  before_action :authenticate_retailer!, only: %i[orders detail]

  def show
    @retailer = Retailer.find(params[:id])
  end

  def orders; end

  def detail
    @order = Order.find(params[:id])
  end

  private

  def all_orders_retailer_has
    # 企業の保有している服全て
    @clothe_ids = current_retailer.clothes.pluck(:id)

    # 企業の保有している服の全ての在庫ID
    @stock_ids = []
    @clothe_ids.each do |clothe_id|
      @stock_id = Stock.where(clothe_id: clothe_id).pluck(:id)
      @stock_ids.push(@stock_id)
    end
    @stock_ids.flatten!

    # 企業の保有している全ての在庫に対するオーダー(OrderStock)
    @order_stocks = OrderStock.where(stock_id: @stock_ids)

    @orders = []
    @order_stocks.each do |order|
      @order = order.order
      @orders.push(@order)
    end
    @orders = @orders.uniq.sort.reverse
  end
end
