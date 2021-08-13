# frozen_string_literal: true

class Retailers::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]
  before_action :ensure_not_user


  def guest_sign_in
    retailer = Retailer.guest
    sign_in retailer
    redirect_to root_path, notice: 'ゲストリテイラーとしてログインしました。'
  end

  def ensure_not_user
    if current_user.present?
      redirect_to root_path, alert: 'アクセス権限がありません'
    end
  end

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
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
