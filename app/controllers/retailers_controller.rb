class RetailersController < ApplicationController
  def show
    @retailer = current_retailer
  end
end
