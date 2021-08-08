module ReviewsHelper
  def new_or_edit
    if action_name == "new" || action_name == "create"
      clothe_reviews_path
    elsif action_name =='edit'
      clothe_review_path
    end
  end
end
