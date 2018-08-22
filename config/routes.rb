Rails.application.routes.draw do

  resources :courses
  resources :cities
  resources :tutorships
  resources :trysts
  resources :users do
  resources :comments
  end
end