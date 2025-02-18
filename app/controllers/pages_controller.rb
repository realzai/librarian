class PagesController < ApplicationController
  layout "landing"
  allow_unauthenticated_access
  def index
  end
end
