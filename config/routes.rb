Rails.application.routes.draw do
  resources :messages, only: [:create]
  get :chat, to: 'visitors#chat'
  root 'visitors#chat'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
