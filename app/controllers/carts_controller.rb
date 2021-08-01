class CartsController < ApplicationController
  before_action :authenticate_user!

  def index
    @carts = current_user.carts.all
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
