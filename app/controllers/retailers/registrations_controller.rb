# frozen_string_literal: true

module Retailers
  class RegistrationsController < Devise::RegistrationsController
    before_action :authenticate_retailer!
    before_action :configure_sign_up_params, only: [:create]
    before_action :configure_account_update_params, only: [:update]
    before_action :ensure_normal_retailer, only: %i[update destroy]
    before_action :ensure_not_user

    def ensure_normal_retailer
      redirect_to clothes_path, notice: 'ゲストリテイラーの更新・削除はできません。' if resource.email == 'guest_retailer@example.com'
    end

    def ensure_not_user
      redirect_to clothes_path, alert: 'アクセス権限がありません' if current_user.present?
    end

    # GET /resource/sign_up
    # def new
    #   super
    # end

    # POST /resource
    # def create
    #   super
    # end

    # GET /resource/edit
    # def edit
    #   super
    # end

    # PUT /resource
    # def update
    #   super
    # end

    # DELETE /resource
    # def destroy
    #   super
    # end

    # GET /resource/cancel
    # Forces the session data which is usually expired after sign
    # in to be expired now. This is useful if the user wants to
    # cancel oauth signing in/up in the middle of the process,
    # removing all OAuth session data.
    # def cancel
    #   super
    # end

    protected

    # If you have extra params to permit, append them to the sanitizer.
    def configure_sign_up_params
      devise_parameter_sanitizer.permit(:sign_up,
                                        keys: %i[name description logo website_url email phone_number address])
    end

    # If you have extra params to permit, append them to the sanitizer.
    def configure_account_update_params
      devise_parameter_sanitizer.permit(:account_update,
                                        keys: %i[name description logo website_url email phone_number address])
    end

    # The path used after sign up.
    # def after_sign_up_path_for(resource)
    #   super(resource)
    # end

    # The path used after sign up for inactive accounts.
    def after_update_path_for(_resource)
      retailers_path(@retailer.id)
    end
  end
end
