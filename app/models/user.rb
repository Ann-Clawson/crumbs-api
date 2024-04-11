class User < ApplicationRecord
  has_secure_password
  has_many :customers, through: :orders
  has_many :orders
end
