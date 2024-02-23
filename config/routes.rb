Rails.application.routes.draw do
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "ingredients/index" => "ingredients#index"
  get "ingredients/new" => "ingredients#new"
  post "ingredients/create" => "ingredients#create"
  delete "ingredients/:id" => "ingredients#destroy"

  get "home/index" => "home#display_random_items"
  get "/" => "home#index"
  
    
end
