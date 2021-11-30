Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'pages#index'
  get 'pages/residential'
  get 'pages/commercial'
  get 'pages/quote'
  get 'pages/charts'
  get '/quote/new', to: 'quote#new'
  post '/quote', to: 'quote#create'
  post '/contact', to: 'contact#create'

  resources :interventions, only: [:new, :create]

  get "/get_buildings/:customer_id", to: "interventions#get_buildings"
  get "/get_customers/:customer_id", to: "interventions#get_customers"
  get "/get_batteries/:building_id", to: "interventions#get_batteries"
  get "/get_columns/:battery_id", to: "interventions#get_columns"
  get "/get_elevators/:column_id", to: "interventions#get_elevators"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
