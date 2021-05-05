Rails.application.routes.draw do
  devise_for :users
  resources :projects do
  	resources :bugs
  end
  #get 'home/index'
  get 'home/about'

  root 'projects#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
