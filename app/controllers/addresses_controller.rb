class AddressesController < ApplicationController
  def destroy
    @address = current_user.addresses.find_by(id:params[:id]).destroy
    redirect_to users_show_path(current_user.id), notice: "お届け先を削除しました"
  end
end
