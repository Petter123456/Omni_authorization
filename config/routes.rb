Rails.application.routes.draw do
  root 'users#new'
  get 'users/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'auth/:provider/callback' => 'sessions#create'
  get 'auth/github', as: 'github_login'
  get 'logout' => 'sessions#destroy'
end
