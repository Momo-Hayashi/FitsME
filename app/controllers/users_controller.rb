class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @addresses = current_user.addresses
  end
end
