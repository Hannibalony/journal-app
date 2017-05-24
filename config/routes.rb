Rails.application.routes.draw do
  get 'login/user'

  get 'entries/index'
  get 'login/index'
  resources :entries
  get 'welcome/index'
  root 'welcome#index'
end
