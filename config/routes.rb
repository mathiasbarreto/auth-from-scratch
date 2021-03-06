Rails.application.routes.draw do
  resources :confirmations, only: [:create, :edit, :new], param: :confirmation_token

  get 'static_pages/home'
  post "sign_up", to: "users#create"
  get "sign_up", to: "users#new"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
