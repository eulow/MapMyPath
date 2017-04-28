Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static_pages#root"

  namespace :api, defaults: { format: :json } do
    resources :users, only: [:create, :update, :index]
    resource :session, only: [:create, :destroy]
    resources :paths, only: [:create, :update, :destroy, :index, :show] do
      resources :comments, only: [:index, :create, :destroy]
    end
    resources :relationships, only: [:index, :update, :create, :destroy]
  end
end
