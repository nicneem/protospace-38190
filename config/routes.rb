Rails.application.routes.draw do
  resources :prototypes, only: :index
  get 'prototypes/index'
  root to: "prototypes#index"# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
