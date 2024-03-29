class UsersController < ApplicationController
  def index
    @book = Book.new
    @users = User.all
  end

  def show
    @book = Book.new
    user = User.find(params[:id])
    @books = user.books
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user), notice: "You have updated your infomation successfully!"
    else
      render 'edit'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

end
