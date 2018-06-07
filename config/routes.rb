Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'welcome#index'

  resources :users, only: [:index, :show, :new, :create] do
    resources :patches, only: [:new, :create, :show, :edit, :update]
    get 'user/:id/patches/delete', to: 'patches#destroy', as: 'destroy_patch'
  end

  get '/threeormore', to: 'users#threeormore'

  get '/patches', to: 'patches#index'

  get '/login', to: 'sessions#new'

  get '/logout', to: 'sessions#destroy'

  resources :sessions, only: [:create]

  resources :categories, only: [:index, :show, :new, :create]

  get '/auth/twitter/callback' => 'sessions#create'
end
