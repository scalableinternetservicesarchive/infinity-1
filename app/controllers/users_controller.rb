class UsersController < ApplicationController

  def show
    #@user = current_user
    @user = User.find(params[:id])
  end

  def show_categories
    @user =  current_user
    @allcategories = Category.all
    @foo = 'bar'
  end

  private

  def user_params
    params.require(:user).permit(:content, :picture)
  end



end
