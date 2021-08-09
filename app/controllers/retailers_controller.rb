class RetailersController < ApplicationController
  def show
    @retailer = Retailer.find(params[:id])
  end

  def orders
    #企業の保有している服全て
    @clothe_ids = current_retailer.clothes.pluck(:id)

    #企業の保有している服の全ての在庫ID
    @stock_ids = []
    @clothe_ids.each do |clothe_id|
      @stock_id = Stock.where(clothe_id: clothe_id).pluck(:id)
      @stock_ids.push(@stock_id)
    end
    @stock_ids.flatten!

    #企業の保有している全ての在庫に対するオーダー
    @order_stocks = OrderStock.where(stock_id: @stock_ids)
  end
end
