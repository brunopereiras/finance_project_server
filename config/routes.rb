Rails.application.routes.draw do

  root 'entries#index'

  resources :entries
  resources :entry_categories

end
