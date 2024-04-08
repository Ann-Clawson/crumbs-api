Rails.application.routes.draw do
  post "/users" => "users#create"
  post "/customers" => "customers#create"
  post "/orders" => "orders#create"
end
