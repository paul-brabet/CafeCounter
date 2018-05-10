class OrderItem < ApplicationRecord
  belongs_to :order
  validates :kitchen_id, :name, :number, :order, presence: true
  # Regex matches letters, numbers, spaces, underscores, and/or hyphens
  validates :kitchen_id, length: { is: 36 }, format: { with: /\w+/ }
  validates :name, format: { with: /\w+/ }
  validates :number, numericality: { only_integer: true }
end
