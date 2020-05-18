Rails.application.routes.draw do
  root "categories#index"

  devise_for :users
  as :user do
    get "signin" => "devise/sessions#new"
    post "signin" => "devise/sessions#create"
    delete "signout" => "sessions/sessions#destroy"
    get "signup" => "devise/users#new"
    post "signup" => "devise/users#create"
  end

  resources :categories
  resources :cars
  resources :automotive_parts
  resources :titles
  resources :service_packs
  resources :register_advisories
  resources :schedule_maintenances do 
    resources :service_registers
  end
end
