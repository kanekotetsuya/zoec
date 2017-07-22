Rails.application.routes.draw do
  devise_for :users
  root "products#index"

  resources :products do
    member do
      get :detail
    end
  end

  resources :users do
    resources :orders
  end

end
