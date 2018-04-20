Rails.application.routes.draw do
  root :to => 'users#index'
  resources :comments do
    collection do
      get :newcomments
    end
  end

  resources :users do
    collection do
      post :login
      get :logout
      get :about
    end
  end
  resources :news

  namespace :v0 do
    resources :comment, only: [:index, :show]
    resources :new, only: [:index, :show, :create]
  end
end
