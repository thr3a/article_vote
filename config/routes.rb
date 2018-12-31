Rails.application.routes.draw do
  resources :votes
  # get 'sessions/index'
  # get 'sessions/logout'
  # get 'sessions/login'
  # get 'sessions/callback'

  get '/auth/:provider/callback', to: 'sessions#callback'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
