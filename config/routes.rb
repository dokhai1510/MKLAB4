Rails.application.routes.draw do
  devise_for :users
  resources :products do
    resources :subscribers, only: [ :create ]
  end
  root "products#index"
end
