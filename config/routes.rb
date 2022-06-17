Rails.application.routes.draw do
  namespace :admin do
      resources :data_centers
      resources :raids
      resources :regions
      resources :strategies

      root to: "data_centers#index"
    end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/login" => "login#login_form"
  post "login" => "login#check_login"
end
