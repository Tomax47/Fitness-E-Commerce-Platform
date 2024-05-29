Rails.application.routes.draw do
  root to: 'home#home'

  resources :daily_workouts, only: %i[new create]
end
