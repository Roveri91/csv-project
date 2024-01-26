Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # post "/import", to: "files#import"
  # get "files/new", to: "files#new"
  # post "/file", to: "files#create"

  resources :csv_files, only: [:index, :new, :create]
  root "csv_files#index"


  # Defines the root path route ("/")
  # root "posts#index"
end
