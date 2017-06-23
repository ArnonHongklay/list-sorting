Rails.application.routes.draw do
  root 'welcome#index'
  get 'welcome/show'

  resources :clinics
end
