Rails.application.routes.draw do
  root 'contacts#index'
  get '/search' => 'pages#search', as: :search
  resources :contacts
end
