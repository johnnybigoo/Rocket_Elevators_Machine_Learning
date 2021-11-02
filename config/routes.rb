Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'pages#index'
  get 'pages/residential'
  get 'pages/commercial'
  get 'pages/quote'
  get '/quote/new', to: 'quote#new'
  post '/quote', to: 'quote#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
