Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :orders
  # The below line was previously part of the resources: orders line
  # , only: [:create]
end