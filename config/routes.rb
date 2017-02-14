Rails.application.routes.draw do

  resources :dining_experiences
  resources :reservations
  namespace :api do
    namespace :v1 do
        post 'signup', to: 'users#create'
    end
  end# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
