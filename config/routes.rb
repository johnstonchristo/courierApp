Rails.application.routes.draw do

  get 'pages/home'

  resources :locations
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  get '/logout' => 'session#destroy'

  get '/orders/pending_orders' => 'orders#show_pending_orders'
  get '/orders/:id/accept_pending_order' => 'orders#accept_pending_order'

  get 'orders/potential_deliveries' => 'orders#show_potential_deliveries'
  get 'orders/:id/accept_potential_delivery' => 'orders#accept_potential_delivery'

  get '/orders/:id/delivery_on_journey' => 'orders#courier_on_journey'

  get '/orders/:id/order_delivered' => 'orders#courier_order_delivered'

  get '/orders/:id/order_received' => 'orders#receiver_confirmed_delivery'



  root "session#new"

  resources :users, :orders

  mount ActionCable.server, at: '/cable'

end
