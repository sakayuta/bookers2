class BooksController < ApplicationController
  def show
  end

  def index
    @book = Book.new
    
  end
end
