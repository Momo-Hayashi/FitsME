class RetailersController < ApplicationController
  before_action :all_stocks_retailer_has, only: %i[ orders detail ]

  def show
    @retailer = Retailer.find(params[:id])
  end

  def orders
    @order_stocks = @order_stocks.order(created_at: :desc)
  end

  def detail
    @order = Order.find(params[:id])
  end

  private

  def all_stocks_retailer_has
    #企業の保有している服全て
    @clothe_ids = current_retailer.clothes.pluck(:id)

    #企業の保有している服の全ての在庫ID
    @stock_ids = []
    @clothe_ids.each do |clothe_id|
      @stock_id = Stock.where(clothe_id: clothe_id).pluck(:id)
      @stock_ids.push(@stock_id)
    end
    @stock_ids.flatten!

    #企業の保有している全ての在庫に対するオーダー(OrderStock)
    @order_stocks = OrderStock.where(stock_id: @stock_ids)
  end

end
