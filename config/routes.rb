Rails.application.routes.draw do
  resources :products, only: [:index, :show]
  resources :categories, only: [:index, :show]

  get '/search', to: 'products#search'
  # get '/filter', to: 'products#filter'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
