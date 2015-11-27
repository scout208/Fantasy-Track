Rails.application.routes.draw do
  root            'static_pages#home'
  get    'about'   => 'static_pages#about'
  post    'recent_meet' => 'static_pages#recent_meet'
  get   'show_all' => 'leagues#show_all'
  post   'scoring_rules' => 'static_pages#scoring_rules'
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
      get :removeEntrant
    end
  end
  resources :athletes
  
  resources :leagues do
    member do
      get :searchLeague
      get :joinLeague
      post :addMember
      post :requestFriend
      get :inviteFriend
    end
  end
  resources :singleleague
end