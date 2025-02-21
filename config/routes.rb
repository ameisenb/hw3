Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # get("/places", { :controller => "places", :action => "index" })

  root "places#index"

  resources "entries"

  resources "places"

end
