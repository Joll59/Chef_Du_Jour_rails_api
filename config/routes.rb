Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :dining_experiences, :reservations
      resources :users, only: [:show, :update]

      post 'signup', to: 'users#create'
      post 'signin', to: 'sessions#create'
      get 'users', to: 'users#index'
    end
  end# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
