class UsersController < ApplicationController
  def edit
  end

  def index
    @user = current_user
    @users = User.all
    @book = Book.new
  end

  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = @user.books
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end

end


