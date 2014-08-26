Rails.application.routes.draw do
  root to: 'links#index'
  get 'sessions/new'

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  resources :users
  resources :sessions
  resources :links do
    resources :votes
    resources :points
    resources :comments
  end
end
