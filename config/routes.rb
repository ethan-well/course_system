Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'infos#index'

  resources :students, only: [:show]
  resources :teachers, only: [:index, :destroy]
  resources :infos, only: [:index]
end
