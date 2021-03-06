Mifavoritos::Application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  
  resources :favorites do
    collection do
      get 'search'
      get 'popular'
      get 'random'
      get 'my' => "favorites#index", :as => :my
    end
  end

  get '/styleguide' => 'pages#styleguide'
  
  root :to => "home#index"
  
end
