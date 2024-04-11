class Customer < ApplicationRecord
  has_many :cooks, through: :carted_cooks
  has_many :orders
  has_many :carted_cooks
end
