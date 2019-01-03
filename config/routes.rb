Rails.application.routes.draw do
  root 'sessions#index'

  resources :votes, only: [:index, :create] do
    collection do
      get :start
    end
  end
  get '/auth/:provider/callback', to: 'sessions#callback'
  get '/logout', to: 'sessions#logout'

  resources :beacons, only: :index do
    collection do
      get :test
    end
  end

end
