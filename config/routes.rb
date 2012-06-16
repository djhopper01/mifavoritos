Mifavoritos::Application.routes.draw do

  get '/styleguide' => 'pages#styleguide'
  
  root :to => "home#index"
  
end
