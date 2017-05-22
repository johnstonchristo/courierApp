Rails.application.routes.draw do

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  get '/logout' => 'session#destroy'

  get '/orders/pending_orders' => 'orders#show_pending_orders'

  root "users#index"

  resources :users, :orders

end
