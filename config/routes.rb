Rails.application.routes.draw do
  
  get 'site_user/index'
  # Handmade routes
  # Configura a seguinte rota: /login, para login/index (arquivo .html)
  match 'login', :to => 'login#index', :via => :get 
  match 'entrar', :to => 'management#index', :via => :get
  match 'site_admin', :to => 'site_admin#index', :via => :get
  match 'nova_conta', :to => 'site_user#index', :via => :get

  # Devise routes
  devise_for :people
  devise_for :admins
  devise_for :users

  # Custom resources
  resources :person_data, path: :profiles
  
  # Auto resources
  resources :managers
  resources :events
  resources :affiliates

  # Definindo rota padrão para events
  root :to => 'events#index'  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end