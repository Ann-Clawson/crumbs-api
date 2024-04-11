class Cook < ApplicationRecord
  has_many :customers, through: :carted_cooks
  has_many :orders, through: :carted_cooks
  has_many :carted_cooks
end
