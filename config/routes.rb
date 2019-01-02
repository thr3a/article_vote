Rails.application.routes.draw do
  root 'votes#index'

  resources :votes, only: [:index, :create]
  get '/auth/:provider/callback', to: 'sessions#callback'

  resources :beacons, only: :index do
    collection do
      get :test
    end
  end

end
