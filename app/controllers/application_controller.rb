class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_parents

   # ログイン済ユーザーのみにアクセスを許可する
  # before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    case resource
    when User
      users_show_path
    when Retailer
      retailers_path(@retailer.id)
    when Admin
      rails_admin_path
    end
  end

  def set_parents
    @parents = Category.where(ancestry: nil)
  end
end
