Rails.application.routes.draw do

  root to: 'students#index'

  resources :students, only: [:index, :show]
  resources :marks, only: [:index]
  resources :absences, only: [:index]
  resources :disciplinary_sanctions, only: [:index]

end