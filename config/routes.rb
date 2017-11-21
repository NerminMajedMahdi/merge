Rails.application.routes.draw do

resources :users



resources :orders, only: [:index, :show, :create, :destroy]

resources :products

get root 'static_pages/landing_page'

get '/static_pages/about'

get 'static_pages/contact'

get 'static_pages/landing_page'

get 'static_pages/index'

get 'static_pages/thank_you'

post 'static_pages/thank_you'




end




