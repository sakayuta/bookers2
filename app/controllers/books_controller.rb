class BooksController < ApplicationController
  def show
    @book = Book.new
    @book1 = Book.find(params[:id])
    @user = @book1.user.find(params[:id])
  end

  def index
    @book = Book.new
    @books = Book.all
    @user = current_user
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book.id)
  end

  def edit
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
