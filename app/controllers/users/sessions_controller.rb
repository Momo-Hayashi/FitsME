# frozen_string_literal: true

module Users
  class SessionsController < Devise::SessionsController
    before_action :ensure_not_retailer

    def guest_sign_in
      user = User.guest
      sign_in user
      redirect_to clothes_path, notice: 'ゲストユーザーとしてログインしました。'
    end

    def ensure_not_retailer
      redirect_to clothes_path, alert: 'アクセス権限がありません' if current_retailer.present?
    end

    # before_action :configure_sign_in_params, only: [:create]

    # GET /resource/sign_in
    # def new
    #   super
    # end

    # POST /resource/sign_in
    # def create
    #   super
    #   redirect_to users_show_path
    # end

    # DELETE /resource/sign_out
    # def destroy
    #   super
    # end

    # protected

    # If you have extra params to permit, append them to the sanitizer.
    # def configure_sign_in_params
    #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
    # end
  end
end
