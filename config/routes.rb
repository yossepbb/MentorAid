Rails.application.routes.draw do
  devise_for :users
  root to: 'user_skills#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :user_skills, only:[:show] do
    resources :bookings, only:[:create]
  end

  resources :bookings, only:[:index] do
    resources :reviews, only: [:create]
  end
end
