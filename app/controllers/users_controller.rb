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
  end
end
