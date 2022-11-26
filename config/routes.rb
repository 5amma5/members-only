Rails.application.routes.draw do
  root "posts#index"
  resources :posts, only: [:index, :new, :create]
  devise_for :users, controllers: { sessions: 'users/sessions' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
