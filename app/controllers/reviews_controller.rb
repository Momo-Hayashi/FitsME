class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @bought_items = OrderStock.all.where(order_id: params[:order_id])
  end

  def confirm

  end

  def create

  end

  def show

  end

  def update

  end

  def destroy

  end

end
