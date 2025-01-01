class GenresController < ApplicationController
  layout "dashboard"
  def index
    @genres = Genre.all
  end
end
