class UsersController < ApplicationController
  before_action :ensure_not_retailer

  def ensure_not_retailer
    if current_retailer.present?
      redirect_to root_path, notice: 'アクセス権限がありません'
    end
  end
  
  def show
    @user = current_user
    @addresses = current_user.addresses
  end
end
