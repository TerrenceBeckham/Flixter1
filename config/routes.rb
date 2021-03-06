Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :dashboard, only: [:show]
  root 'static_pages#index'
  resources :courses, only: [:index, :show] do
    resources :enrollments, only: :create
  end

  resources :lessons, only: [:show]  #lesson 21
  namespace :instructor do
    resources :lessons, only: [:update]
    resources :sections, only: [:update] do
      resources :lessons, only: [ :create]
    end
    resources :courses, only: [:new, :create, :show] do
      resources :sections, only: [:new, :create]
    end
  end
end
