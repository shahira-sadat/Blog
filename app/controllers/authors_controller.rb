class AuthorsController < ApplicationController
  def index; end

  def show
    @author = Author.find(params[:id])
  end
end
