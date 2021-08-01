class CartsController < ApplicationController
  before_action :authenticate_user!

  def index
    @cart = current_user.carts
  end

  def new

  end

  def create

  end

  def update

  end

  def destroy

  end

end
