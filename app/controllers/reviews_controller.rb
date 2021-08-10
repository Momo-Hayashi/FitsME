class ReviewsController < ApplicationController
  before_action :set_clothe, only: %i[ new confirm create edit update]
  before_action :set_reviews, only:  %i[ show edit destroy update ]

  def new
    @stock = Stock.find(params[:stock_no])
    @review = @clothe.reviews.new
  end

  def confirm
    @stock = Stock.find(params[:review][:stock_no])
    @review = @clothe.reviews.build(review_params)
    render :new if @review.invalid?
  end

  def create
    @review = @clothe.reviews.build(review_params)
    @stock = Stock.find(params[:review][:stock_no])
    if params[:back]
      render :new
    else
      if @review.save
        redirect_to clothe_path(@review.clothe), notice: 'レビュー投稿ありがとうございます!'
      else
        render :new
      end
    end
  end

  def edit
    @stock = Stock.find(params[:stock_no])
  end

  def update
    if params[:review][:image_ids]
      params[:review][:image_ids].each do |image_id|
        image = @review.images.find(image_id)
        image.purge
      end
    end
    if @review.update_attributes(review_params)
      redirect_to clothe_path(@review.clothe), notice: "Successfully updated!"
    else
      render :edit
    end
  end

  def destroy
    @review.destroy
    redirect_to clothe_path(@review.clothe), notice: "Successfully deleted!"
  end

  private

  def review_params
    params.require(:review).permit( :clothe_id, :user_id, :rate, :content, :stock_no, images: [])
  end

  def set_reviews
    @review = Review.find(params[:id])
  end

  def set_clothe
    @clothe = Clothe.find(params[:clothe_id])
  end

end