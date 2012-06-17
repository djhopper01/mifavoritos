class FavoritesController < ApplicationController
  before_filter :authenticate_user!
  
  # List all favorites by date (default: today)
  def index
  end
  
  # List all favorites by search query (limit: 50?)
  def search
  end
  
  def create
  end
  
  def destroy
  end
end
