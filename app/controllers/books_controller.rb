class BooksController < ApplicationController
  layout 'dashboard'

  def index
    @books = Book.where(user: current_user)
  end

  def new
    @genres = Genre::all
  end
end
