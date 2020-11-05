Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'accueil#presentation'

  get '/exemple1', to: 'exemple#index_1'
  get '/exemple2', to: 'exemple#index_2'
  get '/exemple3', to: 'exemple#index_3'
  get '/exemple4', to: 'exemple#index_4'
  get '/exemple5', to: 'exemple#index_5'
  get '/exemple6', to: 'exemple#index_6'

  get '/exemple/:id', to: 'exemple#show_1'


  namespace :admin do
    get '/users', to: 'users#index'
  end
end
