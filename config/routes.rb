Rails.application.routes.draw do
  root 'pages#home'
  get '/search' => 'pages#search', as: :search
  resources :contacts
end
