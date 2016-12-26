Rails.application.routes.draw do

  mount Portal::Engine   => '/'
  mount Internal::Engine => '/autor'

end
