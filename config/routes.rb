Rails.application.routes.draw do
  resources :categories
  resources :currencies
  resources :commodities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'commodities#index'
end
