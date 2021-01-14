Rails.application.routes.draw do
  resources :groups
  get '/groups/join' => 'groups#join'
  root to: "tasks#index"
  resources :tasks
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
