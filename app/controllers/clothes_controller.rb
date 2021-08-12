class ClothesController < ApplicationController
  before_action :authenticate_retailer!, only: %i[ new create edit update destroy ]
  before_action :set_clothe, only: %i[ show edit update destroy ]
  # before_action :set_clothe_purchase, only: %i[ purchase pay ]

  def index
    @clothes = Clothe.all.order(updated_at: :desc)
  end

  def new
    @clothe = Clothe.new
    3.times{ @clothe.stocks.build }
  end

  def edit
    @clothe.stocks.build
  end

  def create
    @clothe = current_retailer.clothes.build(clothe_params)

    respond_to do |format|
      if @clothe.save
        format.html { redirect_to @clothe, notice: "Clothe was successfully created." }
        format.json { render :show, status: :created, location: @clothe }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @clothe.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @favorite = current_user.favorites.find_by(clothe_id: @clothe.id) if current_user
    @stocks = @clothe.stocks
  end

  def update
    if params[:clothe][:image_ids]
      params[:clothe][:image_ids].each do |image_id|
        image = @clothe.images.find(image_id)
        image.purge
      end
    end
    respond_to do |format|
      if @clothe.update_attributes(clothe_params)
        format.html { redirect_to @clothe, notice: "Clothe was successfully updated." }
        format.json { render :show, status: :ok, location: @clothe }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @clothe.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @clothe.destroy
    respond_to do |format|
      format.html { redirect_to clothes_url, notice: "Clothe was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_clothe
      @clothe = Clothe.find(params[:id])
    end

    # def set_clothe_purchase
    #   @clothe = Clothe.find(params[:clothe_id])
    # end

    def clothe_params
      params.require(:clothe).permit(:name, :description, :size, :price, images: [], stocks_attributes: [:size, :color, :quantity, :id, :clothe_id ] )
    end
end
