Mifavoritos::Application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  get '/styleguide' => 'pages#styleguide'
  
  root :to => "home#index"
  
end
