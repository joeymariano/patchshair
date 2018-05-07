Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index'

  resource :users, only: [:new, :create]
  resource :sessions, only: [:create, :destroy]
end
