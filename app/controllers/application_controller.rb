class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

   # ログイン済ユーザーのみにアクセスを許可する
  # before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    case resource
    when User
      users_show_path
    when Retailer
      retailers_show_path
    end
  end

end
