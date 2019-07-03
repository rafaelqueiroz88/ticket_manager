Rails.application.routes.draw do
  
  # Configura a seguinte rota: /login, para login/index (arquivo .html)
  match 'login', :to => 'login#index', :via => :get 

  resources :person_data
  devise_for :people
  devise_for :admins
  resources :managers

  # Definindo rota padrão para events
  root :to => 'events#index'

  resources :events
  devise_for :users
  resources :affiliates

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
