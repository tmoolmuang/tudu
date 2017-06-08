Rails.application.routes.draw do
  
  devise_for :users
  resources :users, only: [:show]

  root 'welcome#about'
  get 'welcome/contact'

end
