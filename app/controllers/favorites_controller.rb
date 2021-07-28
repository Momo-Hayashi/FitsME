class FavoritesController < ApplicationController

  def show
    @favorite = current_user.favorites.find_by(clothe_id: @clothe.id)
  end
end
