Rails.application.routes.draw do

  resources :courses
  resources :users do
    resources :comments
  end
end