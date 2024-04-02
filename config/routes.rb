Rails.application.routes.draw do
  post "/users" => "users#create"
  post "/customers" => "customers#create"
  post "/cookies" => "cookies#create"
end
