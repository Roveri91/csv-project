Rails.application.routes.draw do
  get 'csv_apis/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # post "/import", to: "files#import"
  # get "files/new", to: "files#new"
  # post "/file", to: "files#create"

  resources :csv_files, only: [:index, :new, :create]
  resources :csv_apis, only: [:index]
  # do
  #   collection do
  #     post "api_download"
  #   end
  # end
  post 'csv_apis/api_download'
  root "csv_files#index"


  # Defines the root path route ("/")
  # root "posts#index"
end
