class Order < ApplicationRecord
  has_many :order_items
  validates_associated :order_items
  # Regex matches letters, numbers, spaces, underscores, and/or hyphens  
  validates :status, presence: true, format: { with: /\w+/ }
end
