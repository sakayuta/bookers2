class BooksController < ApplicationController
  def show
  end

  def index
    @book = Book.new
    
  end
  
  def create
    @book = Book.new(book_params)
    @book.user_id = current.user_id
    @book.save
    redirect_to book_path(book.id)
  end
  
  def edit
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
