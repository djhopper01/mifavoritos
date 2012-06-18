class FavoritesController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :popular, :random, :search]
  load_and_authorize_resource
  skip_authorize_resource :only => [:index, :popular, :random, :search]
  
  respond_to :html, :json
  
  # List all favorites by date (default: today)
  def index
    respond_with @favorites
  end
  
  def popular
    respond_with @favorites
  end
  
  def random
    respond_with @favorites
  end
  
  # List all favorites by search query (limit: 50?)
  def search
  end
  
  def new
    respond_with @favorite
  end
  
  def create
    # May want to move Diffbot call to model, but I'm unsure at this point.
    begin
      article = Diffbot::Article.fetch(@favorite.href)
    rescue Exception => e # Any problem with fetching the supplied URL
      logger.debug "Error fetching the supplied URL: #{@favorite.href}"
    end
    
    if article.present?
      @favorite.title = article.title
      @favorite.author = article.author
      @favorite.text = article.text
    end
    
    @favorite.save
    respond_with @favorite
  end
  
  def show
    respond_with @favorite
  end
  
  def edit
    respond_with @favorite
  end
  
  def destroy
    @favorite.destroy
    respond_with @favorite
  end
end
