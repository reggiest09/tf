Rails.application.routes.draw do
  devise_for :users
  
  resources :listings do
   resources :orders, only: [:new, :create]
  end
  root'listings#index'
  get 'pages/about'
  get 'pages/contact'
  get 'sales' => "orders#sales"
  get 'purchases' => "orders#purchases"
   get 'seller' => 'listings#seller'
  
end
