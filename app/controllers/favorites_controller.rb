class FavoritesController < ApplicationController
  before_action :authenticate_user!

  def index
    @favorites = current_user.favorites
  end

  def create
    favorite = current_user.favorites.create(clothe_id: params[:clothe_id])
    redirect_to clothe_path(params[:clothe_id]), notice: "#{favorite.clothe.name}をお気に入り登録しました！"
  end

  def destroy
    favorite = current_user.favorites.find_by(id: params[:id]).destroy
    redirect_to clothe_path(params[:clothe_id]), notice: "#{favorite.clothe.name}をお気に入り解除しました！"
  end

end
