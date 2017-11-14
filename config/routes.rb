Rails.application.routes.draw do
  resources :articels

  root to: 'articels#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
