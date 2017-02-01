Rails.application.routes.draw do
  resources :hoagies
  resources :condiments
  resources :ingredients
  resources :breads
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
