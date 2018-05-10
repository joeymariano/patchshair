Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'welcome#index'

  resources :users, only: [:show, :new, :create] do
    resources :patches, only: [:new, :create, :show]
    get 'user/:id/patches/delete', to: 'patches#destroy', as: 'destroy_patch'
  end

  get '/login', to: 'sessions#new'

  get '/logout', to: 'sessions#destroy'

  resources :sessions, only: [:create]
end
