Rails.application.routes.draw do
  get 'signup', to: 'users#new'

  root to: 'static_pages#index'
  get '/help', to: 'static_pages#help'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
