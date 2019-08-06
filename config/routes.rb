Rails.application.routes.draw do
  resources :user, controller: 'user'
  resources :gossips, controller: 'gossips'
  
  get 'welcome/:first_name', to: 'welcome#first_name'
  get 'contact', to: 'static_pages#contact'
  get 'team', to: 'static_pages#team'
  root 'home#index'

end
