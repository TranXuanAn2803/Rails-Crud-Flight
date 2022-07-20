Rails.application.routes.draw do
  root 'pages#index'
  namespace :api do
    namespace :v1 do
      resources :airlines, params: :slug
      resources :reviews, only: [:create, :destroy]
    end
  end

      # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '*path', to: 'page#index', via: :all
  # Defines the root path route ("/")
  # root "articles#index"
end
