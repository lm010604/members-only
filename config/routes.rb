Rails.application.routes.draw do
  root "posts#index"

  resources :posts, only: [ :index, :new, :create ]

  resources :users, only: [ :new, :create ]

  resource :session, only: [ :new, :create, :destroy ]
end
