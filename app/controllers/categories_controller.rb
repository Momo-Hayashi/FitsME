class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    #対象のカテゴリーの服のidを配列でとりだす
    @categorizations = Categorization.where(category_id: @category.id).pluck(:clothe_id)

    @q = Clothe.ransack(params[:q])
    @results = @q.result(distinct: true)

    @clothes_ids = []
    @results.each do |result|
      if @categorizations.include?(result.id)
        @clothes_ids.push(result.id)
      end
    end
    @clothes = Clothe.find(@clothes_ids)
    @clothes = Kaminari.paginate_array(@clothes).page(params[:page]).per(16)
  end

end
