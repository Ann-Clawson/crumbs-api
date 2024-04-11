class Order < ApplicationRecord
  has_many :carted_cooks
  has_many :cooks, through: :carted_cooks
  belongs_to :customer, class_name: "Customer"
  # belongs_to :user
end
