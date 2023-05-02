class OrderDetail < ApplicationRecord
  belongs_to :medicine
  belongs_to :order
end
