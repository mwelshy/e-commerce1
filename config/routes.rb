Rails.application.routes.draw do





  resources :products, :carts, :wishlists

  devise_for :users

  # create a user

  get '/users/:id' => 'users#show', :as => 'user'

  

  post '/products/add_to_cart'
  post '/products/add_to_wishlist'


  post '/products/remove_from_cart'
  post '/products/remove_from_wishlist'
  post '/products/add_to_cart_from_wishlist'



  root 'static_pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
