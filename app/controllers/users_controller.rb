class UsersController < ApplicationController
  def show
    @user = current_user
    @addresses = current_user.addresses
  end
end
