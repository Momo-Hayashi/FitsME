class ReviewsController < ApplicationController
  # before_action :set_clothe, only: %i[ create edit update]

  def new
    @stock = Stock.find(params[:stock_id])
    @review = @stock.reviews.new
  end

  # def confirm
  #   @stock = Stock.find(params[:review][:stock_id])
  #   @clothe = Clothe.find(@stock.clothe.id)
  #   @review = @stock.reviews.build(review_params)
  #   render :new if @review.invalid?
  # end

  def create
    @review = current_user.reviews.build(review_params)
    if params[:back]
      render :new
    else
      if @review.save
        redirect_to clothe_path(@review.stock.clothe), notice: 'レビュー投稿ありがとうございます!'
      else
        render :new
      end
    end
  end

  def show

  end

  def update

  end

  def destroy

  end

  private

  def review_params
    params.require(:review).permit(:content, :stock_id, :clothe_id, images: [])
  end
  #
  # def set_clothe
  #   @clothe = Clothe.find(params[:review][:clothe_id])
  # end

end
