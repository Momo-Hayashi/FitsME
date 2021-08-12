class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
<<<<<<< HEAD
    @categorizations = Categorization.where(category_id: @category.id).pluck(:clothe_id)
    @clothes = Clothe.find(@categorizations)
=======
    @clothes = Clothe.where(category_id: @category.id)
>>>>>>> 3a07efd5ef2919c1813556170c0eec13ff21b6c2
  end
end
