class CartedCook < ApplicationRecord
  belongs_to :cook
  belongs_to :order, optional: true
  belongs_to :customer
end
