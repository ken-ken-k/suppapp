Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  resources :supplements do
    collection do
      get 'search'
    end
  end
  resources :users
end
