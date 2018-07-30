Rails.application.routes.draw do
  root 'application#welcome'
  resources :users
  match 'signin' => 'users#signin', via: [:get, :post]
  get 'logout', to: 'users#logout'
end
