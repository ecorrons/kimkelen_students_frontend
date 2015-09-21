Rails.application.routes.draw do

  root to: 'welcome#index'

  resources :marks, only: [:index, :show]

  resources :attendances, only: [:index]

  resources :disciplinary_sanctions, only: [:index]

end