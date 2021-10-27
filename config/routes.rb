Rails.application.routes.draw do
  devise_for :users
  root 'pages#index'
  get 'pages/residential'
  get 'pages/commercial'
  get 'pages/quote'
  root 'reocket_elevators#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
