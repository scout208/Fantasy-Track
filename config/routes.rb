Rails.application.routes.draw do
  root                'static_pages#home'
  get    'about'   => 'static_pages#about'
  get   'show_all' => 'leagues#show_all'
  get    'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  get    'current_user' => 'sessions#show'
  delete  'meetdetail'  => 'meets#destroy'
  delete  'eventdetail'  => 'events#destroy'
  resources :users do
    member do
      get :confirm_email
    end
  end
  resources :meets
  resources :events do
    member do
      get :selectEntrant
      get :addEntrant
    end
  end
  resources :athletes
  resources :leagues
  resources :singleleague
end