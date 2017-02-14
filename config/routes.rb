Rails.application.routes.draw do
  get 'users/new'

  get "static_pages/home"
  get "static_pages/help"
  get "static_pages/about"
  get "static_pages/contact"

  root  'static_pages#home'
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'

  resources :tests
  resources :microposts, only: [:create, :destroy]
  resources :users
      root  'static_pages#home'
      match '/signup',  to: 'users#new',            via: 'get'

  resources :sessions, only: [:new, :create, :destroy]
   root  'static_pages#home'
   match '/signup',  to: 'users#new',            via: 'get'
   match '/signin',  to: 'sessions#new',         via: 'get'
   match '/signout', to: 'sessions#destroy',     via: 'delete'
   #get "sessions/create"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
