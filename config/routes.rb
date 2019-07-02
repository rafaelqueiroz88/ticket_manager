Rails.application.routes.draw do
  # Definindo rota padrão para events
  root :to => 'events#index'

  resources :events
  devise_for :users
  resources :affiliates
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
