class TopsController < ApplicationController
  def index
    if admin_signed_in?
      redirect_to clothes_path
    else
      render layout: false
    end
  end
end
