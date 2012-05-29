Chattin::Application.routes.draw do
  resources :messages
  resources :users
  root to: 'users#new'
end
