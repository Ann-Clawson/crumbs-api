class Order < ApplicationRecord
  has_many :carted_cooks
  has_many :cooks, through: carted_cooks
  belongs_to :customer
  belongs_to :user
end
