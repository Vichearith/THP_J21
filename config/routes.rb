Rails.application.routes.draw do
  get 'user/:index', to: 'user#display'
  get 'gossip/:index', to: 'gossip#display'
  get 'welcome/:first_name', to: 'welcome#first_name'
  get '/contact', to: 'static_pages#contact'
  get '/team', to: 'static_pages#team'
  root 'home#index'

end
