class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :set_parents

  def after_sign_in_path_for(resource)
    case resource
    when User
      users_show_path
    when Retailer
      retailers_path(@retailer.id)
    when Admin
      clothes_path
    end
  end

  def after_sign_out_path_for(resource)
    clothes_path
  end

  # def set_parents
  #   @parents = Category.where(ancestry: nil)
  # end
end
