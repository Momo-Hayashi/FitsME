# frozen_string_literal: true

class Admins::SessionsController < Devise::SessionsController
  before_action :no_access_for_users_and_retailers

  def no_access_for_users_and_retailers
    redirect_to clothes_path if current_user || current_retailer
  end
  # before_action :configure_sign_in_params, only: [:create]

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
