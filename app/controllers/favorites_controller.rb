class FavoritesController < ApplicationController

  def create
    favorite = current_user.favorites.create(clothe_id: params[:clothe_id])
    redirect_to clothe_path(params[:clothe_id]), notice: "#{favorite.clothe.name}をお気に入り登録しました！"
  end

  def show
  end

  def destroy
    favorite = current_user.favorites.find_by(id: params[:id]).destroy
    redirect_to clothes_path, notice: "#{favorite.clothe.name}をお気に入り解除しました！"
  end

end
