Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  

  # Add routes below this line
 
    resources :jobs, only: [:create, :show, :index]
  end
  

  

