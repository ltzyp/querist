Rails.application.routes.draw do
  resources :attributes
  resources :relations
  resources :indices
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
