class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @categorizations = Categorization.where(category_id: @category.id).pluck(:clothe_id)
    @clothes = Clothe.find(@categorizations)
  end
end
