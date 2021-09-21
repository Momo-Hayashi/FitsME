# frozen_string_literal: true

module Users
  class RegistrationsController < Devise::RegistrationsController
    before_action :configure_sign_up_params, only: [:create]
    before_action :configure_account_update_params, only: [:update]
    before_action :ensure_normal_user, only: %i[destroy]
    before_action :authenticate_user!
    before_action :ensure_not_retailer

    def ensure_normal_user
      redirect_to clothes_path, notice: 'ゲストユーザーの更新・削除はできません。' if resource.email == 'guest@example.com'
    end

    def ensure_not_retailer
      redirect_to clothes_path, alert: 'アクセス権限がありません' if current_retailer.present?
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
      devise_parameter_sanitizer.permit(:sign_up, keys: [:id, :username, :points, :birthday, :height, :weight, :bust, :waist, :hip,
                                                         { addresses_attributes: %i[
                                                           first_name
                                                           last_name
                                                           postcode
                                                           prefecture_code
                                                           address_city
                                                           address_street
                                                           address_building
                                                           phone_number
                                                           user_id
                                                           id
                                                           _destroy
                                                         ] }])
    end

    # If you have extra params to permit, append them to the sanitizer.
    def configure_account_update_params
      devise_parameter_sanitizer.permit(:account_update, keys: [:id, :username, :points, :birthday, :height, :weight, :bust, :waist, :hip,
                                                                { addresses_attributes: %i[
                                                                  first_name
                                                                  last_name
                                                                  postcode
                                                                  prefecture_code
                                                                  address_city
                                                                  address_street
                                                                  address_building
                                                                  phone_number
                                                                  user_id
                                                                  id
                                                                  _destroy
                                                                ] }])
    end

    # 更新（編集の反映）時にパスワード入力を省く
    def update_resource(resource, params)
      resource.update_without_password(params)
    end

    # The path used after sign up for inactive accounts.
    def after_update_path_for(_resource)
      users_show_path
    end
  end
end
