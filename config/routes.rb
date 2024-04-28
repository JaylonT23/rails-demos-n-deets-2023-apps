Rails.application.routes.draw do
  root 'pages#home'
  resources :users, only: [:index]
  resources :posts, only: [:index]
end
