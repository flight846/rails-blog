Rails.application.routes.draw do
  resources :posts do 
    resources :comments
  end
  
  root "posts#index"
  
  # No need of resources like update, delete
  get '/about', to: 'pages#about'
end
