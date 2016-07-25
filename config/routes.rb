Rails.application.routes.draw do
  devise_for :users
  resources :messages, only: [:create]
  get :chat, to: 'visitors#chat'
  root 'visitors#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
