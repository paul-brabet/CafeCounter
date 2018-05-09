class OrderItem < ApplicationRecord
  belongs_to :order
  # validates :kitchen_id, presence: true
  # validates :name, presence: true
  # validates :number, presence: true
  # validates :order, presence: true
end
