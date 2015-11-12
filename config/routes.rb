Rails.application.routes.draw do
  root                'static_pages#home'
  get    'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  get    'current_user' => 'sessions#show'
  resources :users
  resources :meets
  resources :events
  resources :athletes
  resources :leagues
end