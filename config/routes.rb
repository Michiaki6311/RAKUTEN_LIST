Rails.application.routes.draw do
  get 'signup', to: 'users#new'

  root to: 'static_pages#index'
  get '/help', to: 'static_pages#help'

  get    'login' , to: 'sessions#new'
  post   'login' , to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :users
  resources :items , only: [:new , :show]
  resources :ownerships , only: [:create , :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
