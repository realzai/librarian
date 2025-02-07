class BooksController < ApplicationController
  layout 'dashboard'

  def index
    @books = Book.all
  end

  def create
  end
end
