Rails.application.routes.draw do
  get 'home' => 'home#index'
  root 'home#index'

  resources :users
  resources :posts

  post 'delete_all_post' => 'posts#delete_all_post'

  get 'login' => 'sessions#getLogin'
  post 'login' => 'sessions#postLogin'
  delete 'logout' => 'sessions#deleteLogout'
end
