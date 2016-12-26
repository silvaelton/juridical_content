Rails.application.routes.draw do

  root 'portal/home#index'
  
  mount Portal::Engine   => '/'
  mount Internal::Engine => '/interno'

end
