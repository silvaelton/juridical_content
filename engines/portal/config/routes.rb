Portal::Engine.routes.draw do

  root 'home#index'

  resources :articles
  resources :authors
  resources :categories

end
