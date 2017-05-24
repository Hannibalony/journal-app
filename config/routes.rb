Rails.application.routes.draw do
  get 'entries/index'

  resources :entries
  get 'welcome/index'
  root 'welcome#index'
end
