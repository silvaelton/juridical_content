Internal::Engine.routes.draw do

  resources :sessions, path: 'acesso'

  resources :articles
  resources :article_categories

  resources :bulletins

  resources :questions do 
    resources :anwsers
  end

  resources :simulations
  # routes for users

  resources :users do 
    resources :bookmarks
  end

  resources :user_simulations

end
