Rails.application.routes.draw do

  resources :signature_dishes
  namespace :api do
    namespace :v1 do
      resources :dining_experiences, :reservations
      resources :users, only: [:show, :update, :destroy] do
        resources :my_dining_experiences
      end

      post 'signup', to: 'users#create'
      post 'signin', to: 'sessions#create'
      get 'users', to: 'users#index'
      post 'reservationCalendar', to: 'reservations#index'
      get '/my_reservations', to: 'reservations#show'
    end
  end# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
