class ReviewsController < ApplicationController
  before_action :set_clothe, only: %i[ new show confirm create edit update ]
  before_action :set_reviews, only:  %i[ show edit destroy update ]
  before_action :authenticate_user!, only:  %i[ index new confirm create edit update ]

  def index
    items_current_user_bought
  end

  def new
    items_current_user_bought
    @stock = Stock.find(params[:stock_no])
    @review = Review.find_by(user_id:current_user, clothe_id:@clothe.id, stock_no:@stock.id )

    if @review.present?
      redirect_to edit_clothe_review_path(@review.id, clothe_id:@clothe.id, stock_no: @stock.id ),
       alert: 'ひとつの商品へのレビューは一人一回までです'
    elsif @bought_item_stock_ids.include?(@stock.id)
      @review = @clothe.reviews.new
    else
      redirect_to orders_path, alert:'購入した商品のみレビュー投稿が可能です'
    end
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
        if @review.images.attached?
          new_points = current_user.points + 150
          current_user.update(points: new_points)
          redirect_to clothe_path(@review.clothe), notice: '写真付きレビュー投稿ありがとうございます！150ポイント獲得しました！'
        else
          new_points = current_user.points + 100
          current_user.update(points: new_points)
          redirect_to clothe_path(@review.clothe), notice: 'レビュー投稿ありがとうございます！100ポイント獲得しました！'
        end
      else
        render :new
      end
    end
  end

  def show
    @stock = Stock.find(params[:stock_no])
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
      redirect_to clothe_path(@review.clothe), notice: "レビューを更新しました！ありがとうございます！"
    else
      redirect_to edit_clothe_review_path(@review.id, clothe_id:@review.clothe.id, stock_no: params[:review][:stock_no] ),
      alert: '評価もしくは内容が空白です'
    end
  end

  def destroy
    @review.destroy
    redirect_to clothe_path(@review.clothe), notice: "レビューを削除しました！"
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

  def items_current_user_bought
    # @bought_item_stock_ids= 購入した商品のストックの配列
    @orders_ids = current_user.orders.pluck(:id)

    @bought_item_stock_ids = []
    @order_stock_ids = []
    @orders_ids.each do |order_id|
      @order_stock = OrderStock.where(order_id: order_id)
      @bought_item_stock_ids.push(@order_stock)
      @order_stock_ids.push(@order_stock.ids)
    end
    #購入したアイテムのストックのids
    @bought_item_stock_ids = @bought_item_stock_ids.flatten!.pluck(:stock_id) if @bought_item_stock_ids.present?
    @bought_item_stock_ids = @bought_item_stock_ids.uniq
    #購入したオーダーのids
    @order_stock_ids = @order_stock_ids.flatten!
  end

end
