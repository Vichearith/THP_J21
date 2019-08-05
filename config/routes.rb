Rails.application.routes.draw do
  get '/user/:index', to: 'user#display'
  resources :user, controller: 'user'
  get '/gossip/:index', to: 'gossip#display'
  resources :gossip, controller: 'gossip'
  get '/welcome/:first_name', to: 'welcome#first_name'
  get '/contact', to: 'static_pages#contact'
  get '/team', to: 'static_pages#team'
  root 'home#index'

end
