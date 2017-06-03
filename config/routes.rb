Rails.application.routes.draw do
  
  root 'welcome#about'
  get 'welcome/contact'

end
