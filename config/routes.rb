Rails.application.routes.draw do
  resources :users
  resources :gossips do
    resources :comments
  end
  resources :cities
  
  get 'welcome/:first_name', to: 'welcome#first_name'
  get 'contact', to: 'static_pages#contact'
  get 'team', to: 'static_pages#team'
  root 'home#index'

end
