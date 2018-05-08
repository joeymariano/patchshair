Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'welcome#index'

  resources :users, only: [:show, :new, :create]

  get '/login', to: 'sessions#new'

  get '/logout', to: 'sessions#destroy'

  resources :sessions, only: [:create]

  resources :patches, only: [:new, :create, :show]
end
