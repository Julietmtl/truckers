Rails.application.routes.draw do
  root :to => "welcome#index"

  get 'welcome/index'
  get 'sessions/new'
  get 'register' => 'trucks#new', :as => :register
  get 'companies/create'
  get 'users/create'
  post '/login' => 'sessions#new', :as => :login
  post '/logout' => 'sessions#destroy', :as => :logout
  post '/sessions/create' => 'sessions#create'
  resources :trucks, only: [:index, :show]

  namespace :admin do
    resources :trucks
  end
end
