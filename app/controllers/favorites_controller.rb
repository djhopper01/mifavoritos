class FavoritesController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource
  
  respond_to :html, :only => [:index, :search]
  respond_to :json
  
  # List all favorites by date (default: today)
  def index
    respond_with @favorites
  end
  
  # List all favorites by search query (limit: 50?)
  def search
  end
  
  def create
    @favorite.save
    respond_with @favorite
  end
  
  def destroy
    @favorite.destroy
    respond_with @favorite
  end
end
