Mifavoritos::Application.routes.draw do

  devise_for :users

  get '/styleguide' => 'pages#styleguide'
  
  root :to => "home#index"
  
end
