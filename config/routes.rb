Clarion::Application.routes.draw do


  get "instalacion/bar"

  get "otros/index"

  get "aboutus/index"

  get "promociones/index"

  get "galeria/index"

  resources :ingles

 resources :advertisements

  get "fotos/upload"

  get "sessions/new"

  get "users/new"
  get "galeria/index"

  resources :ingles
  resources :users
resources :sessions
resources :fotos



  #get "reservacion/index"

 # get "instalacion/index"

  resources :habitaciones
  match "instalaciones" => "instalacion#index"
  match "reservaciones"  => "reservacion#index"
  match "reservaciones_show"  => "reservacion#show"
  get "habitaciones/index"
  match "ingles" => "ingles#index"
  get "home/index"
  match "galeria" => "galeria#index"
  match "otros" => "otros#index"


 match "sign_up" => "users#new"
match "login" => "sessions#new"
match "log_out" => "sessions#destroy"
match "upload" => "fotos#upload"
match "promociones" => "promociones#index"
match "aboutus" => "aboutus#index"
match "restaurante" => "instalacion#salajuegos"
match "bar" => "instalacion#bar"
   root :to => 'home#index'
  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
end
