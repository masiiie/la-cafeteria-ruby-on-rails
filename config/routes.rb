Rails.application.routes.draw do

  get 'admin/index'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  resources :users
  get 'home/iniciar'

  get 'admin' => 'admin#index'
  
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  resources :mercancia
  resources :venta
  resources :jornadas
  resources :dependientes
  resources :products

  #get 'product/index'
  #get 'product/new'
  #post 'product/new'
  root 'home#iniciar'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end