Rails.application.routes.draw do
  post "/users" => "users#create"
  post "/customers" => "customers#create"
  post "/orders" => "orders#create"
  post "/cooks" => "cooks#create"
  post "/carted_cooks" => "carted_cooks#create"
end
