Rails.application.routes.draw do
  resources :categories
  resources :guides
  resources :blogs
  resources :posts
  resources :polts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
