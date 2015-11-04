class UsersController < ApplicationController

  def show
    #@user = current_user
    @user = User.find(params[:id])
  end


  private

  def user_params
    params.require(:user).permit(:content, :picture)
  end



end
