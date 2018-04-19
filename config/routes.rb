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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
