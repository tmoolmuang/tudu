Rails.application.routes.draw do
  
  devise_for :users
  root 'welcome#about'
  get 'welcome/contact'

end
