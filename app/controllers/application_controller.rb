class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

   # ログイン済ユーザーのみにアクセスを許可する
  # before_action :authenticate_user!
  # deviseコントローラーにストロングパラメータを追加する
  # before_action :configure_permitted_parameters, if: :devise_controller?

  # protected

  # def configure_permitted_parameters
  #   # サインアップ時にusernameのストロングパラメータを追加
    # devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :points])
  #   # アカウント編集の時にusernameのストロングパラメータを追加
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:username, :points])
  # end

  # def devise_parameter_sanitizer
  #   if resource_class == User
  #     User::ParameterSanitizer.new(User, :user, params)
  #   else
  #     super # Use the default one
  #   end
  # end

end
