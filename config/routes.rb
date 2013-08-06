Rails3BootstrapDeviseCancan::Application.routes.draw do
  # get "employees/index"

  # get "employees/create"

  # get "employees/show"

  # get "employees/update"

  # get "employees/destroy"
  resources :employees do
    resources :evaluations
  end
  

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end