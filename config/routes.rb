Rails.application.routes.draw do
  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
  resources :courses
  resources :cities
  resources :tutorships
  resources :trysts
  resources :users do
    resources :comments
  end
end