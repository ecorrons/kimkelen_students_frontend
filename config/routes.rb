Rails.application.routes.draw do

  root to: 'welcome#index'

  resources :marks, only: [:index]

  resources :absences, only: [:index]

  resources :disciplinary_sanctions, only: [:index]

end