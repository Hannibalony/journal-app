Rails.application.routes.draw do
  get 'accounts/new'

  get 'signup/new'

  get 'login/user'

  get 'entries/index'
  get 'login/index'
  resources :entries
  get 'welcome/index'
  root 'welcome#index'
end
