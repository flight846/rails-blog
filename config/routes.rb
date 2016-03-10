Rails.application.routes.draw do
  resources :posts do 
    resources :comments
  end
  
  root "pages#about"
  
  # No need of resources like update, delete
  get '/blog', to: 'posts#index'
end
