Rails.application.routes.draw do





  resources :users, :sessions, :products, :carts, :wishlists

  # create a user

  get '/create' => 'users#new'
  get '/login' => 'static_pages#login'

  post '/sessions/destroy' 



  root 'static_pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
