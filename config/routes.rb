Rails.application.routes.draw do

  devise_for :users
  as :user do
    get "signin" => "devise/sessions#new"
    post "signin" => "devise/sessions#create"
    delete "signout" => "sessions/sessions#destroy"
    get "signup" => "devise/users#new"
    post "signup" => "devise/users#create"
  end
end
