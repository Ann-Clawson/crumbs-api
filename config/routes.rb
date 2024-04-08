Rails.application.routes.draw do
  post "/users" => "users#create"
  post "/customers" => "customers#create"
  post "/orders" => "orders#create"
  post "/cooks" => "cooks#create"
end
