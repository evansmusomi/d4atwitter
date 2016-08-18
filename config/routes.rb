Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :tweets, only: [:show]
  get "/:user_name" => "users#show", as: :twitter
  post "/:user_name/" => "tweets#create", as: :post_tweet
  root 'users#index'
end
