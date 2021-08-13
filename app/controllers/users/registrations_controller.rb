# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  before_action :configure_account_update_params, only: [:update]
  before_action :ensure_normal_user, only: %i[ update destroy ]
  before_action :authenticate_user!
  before_action :ensure_not_retailer

  def ensure_normal_user
    if resource.email == 'guest@example.com'
      redirect_to root_path, notice: 'ゲストユーザーの更新・削除はできません。'
    end
  end

  def ensure_not_retailer
    if current_retailer.present?
      redirect_to root_path, alert: 'アクセス権限がありません'
    end
  end

  # GET /resource/sign_up
  def new
    @user = User.new
    @user.addresses.build
    super
  end

  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
  def edit
    @user.addresses.build
    super
  end

  # PUT /resource
  def update
    super
    # redirect_to users_show_path, notice: "Successfully updated!"
  end

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
    devise_parameter_sanitizer.permit(:sign_up, keys: [:id, :username, :points, :birthday, :height, :weight, :bust, :waist, :hip,
      addresses_attributes: [
      :first_name,
      :last_name,
      :postcode,
      :prefecture_code,
      :address_city,
      :address_street,
      :address_building,
      :phone_number,
      :user_id,
      :id,
      :_destroy ] ])
  end

  # If you have extra params to permit, append them to the sanitizer.
  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:id, :username, :points, :birthday, :height, :weight, :bust, :waist, :hip,
      addresses_attributes: [
      :first_name,
      :last_name,
      :postcode,
      :prefecture_code,
      :address_city,
      :address_street,
      :address_building,
      :phone_number,
      :user_id,
      :id,
      :_destroy ] ])
  end

  #更新（編集の反映）時にパスワード入力を省く
  def update_resource(resource, params)
    resource.update_without_password(params)
  end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
