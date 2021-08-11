class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @clothes = Clothe.where(category_id: @category.id)
  end
end
