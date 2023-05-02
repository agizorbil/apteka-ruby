Rails.application.routes.draw do
<<<<<<< HEAD
  resources :pharmacies
  resources :medicines
  root 'greetings#hello', as: 'home'
  get 'index', to: 'posts#index', as: 'index'

  resources:posts
 # resources :pharmacies
 # resources :medicinein_pharmacies
 # resources :orders
 # resources :customers
 # resources :medicines
=======
  root 'greetings#hello'
  resources :order_details
  resources :orders
  resources :customers
  resources :medicines_in_pharmacies
  resources :pharmacies
  resources :medicines
>>>>>>> 1e11775 (First Commit)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
