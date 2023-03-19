class BooksController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if book.save
      redirect_to book_path(@book), notice: "You have created book successfully"
    else
      @books = Book.all
      render "index"
    end
  end

  def show
  end

  def edit
  end

  private

  def book_params
    params.require(:book).permit(:title, :opinion)
  end

end
