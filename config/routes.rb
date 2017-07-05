Rails.application.routes.draw do
  resources :users
  resources :posts
  post 'register', to: 'authentications#register'
  post 'login', to: 'authentications#login'
end
