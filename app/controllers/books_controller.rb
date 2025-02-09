class BooksController < ApplicationController
  layout 'dashboard'

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
    @genres = Genre::all
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to books_path
  end

  def edit
    @book = Book.find(params[:id])
    @genres = Genre::all
  end

  def update
    @book.update(book_params)
    redirect_to books_path
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end


  private

  def book_params
    params.require(:book).permit(:title, :author, :genre_id)
  end
end
