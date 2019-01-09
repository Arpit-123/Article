Rails.application.routes.draw do
	
  get 'users/index'
  get 'articles/index'
  get 'users/index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :articles
  resources :users
	  

  root 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
