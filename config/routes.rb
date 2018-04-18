Rails.application.routes.draw do
  resources :comments
  resources :users do
    collection do
      post :login
      get :logout
    end
  end
  resources :news
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
