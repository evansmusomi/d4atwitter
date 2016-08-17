Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :index] do
  	resources :tweets, only: [:new, :create, :index]
  end

  resources :tweets, only: [:show]

  root 'users#index'
end
