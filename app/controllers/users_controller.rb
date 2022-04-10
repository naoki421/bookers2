class UsersController < ApplicationController
  def edit
  end

  def index
    @user = User.all
  end

  def show
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
end

