Rails.application.routes.draw do

  resources :restaurants, only: [:index, :show] do
    collection do
      get 'filtered'
    end
  end

  resources :users, only: [:show, :create, :new, :edit, :update, :destroy]
  resources :matchrestaurants, only: [:show]
  #this is where you match with users
  resources :matchusers, only: [:show]
  #if you and the user match, go to match users show page
  resources :conversations, only: [:show, :create, :new]

  resources :messages, only: [:create, :new] #mby not new

<<<<<<< b5d89b72cf1c553e2a8881c87e5c433077871984

  resources :sessions, only: [:new, :create, :destroy]
=======
>>>>>>> Add working Omniauth
  get '/login' => 'sessions#new'
  get '/logout' => 'sessions#destroy'
  get '/register' => 'users#new'
  get '/about' => 'pages#about'
  root 'restaurants#index'

match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
match 'auth/failure', to: redirect('/'), via: [:get, :post]

root 'sessions#new'
# collection do
#   get 'match-restaurants'
# end
# The priority is based upon order of creation: first created -> highest priority.
# See how all your routes lay out with "rake routes".

# You can have the root of your site routed with "root"
# root 'welcome#index'

# Example of regular route:
#   get 'products/:id' => 'catalog#view'

# Example of named route that can be invoked with purchase_url(id: product.id)
#   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

# Example resource route (maps HTTP verbs to controller actions automatically):
#   resources :products

# Example resource route with options:
#   resources :products do
#     member do
#       get 'short'
#       post 'toggle'
#     end
#
#     collection do
#       get 'sold'
#     end
#   end

# Example resource route with sub-resources:
#   resources :products do
#     resources :comments, :sales
#     resource :seller
#   end

# Example resource route with more complex sub-resources:
#   resources :products do
#     resources :comments
#     resources :sales do
#       get 'recent', on: :collection
#     end
#   end

# Example resource route with concerns:
#   concern :toggleable do
#     post 'toggle'
#   end
#   resources :posts, concerns: :toggleable
#   resources :photos, concerns: :toggleable

# Example resource route within a namespace:
#   namespace :admin do
#     # Directs /admin/products/* to Admin::ProductsController
#     # (app/controllers/admin/products_controller.rb)
#     resources :products
#   end
end
