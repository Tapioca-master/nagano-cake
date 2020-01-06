class CartItem < ApplicationRecord
	belongs_to :customer, optional: true
	belongs_to :item, optional: true

	validates :customer_id, presence: true
	validates :item_id, presence: true
	validates :amount, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1 }, length: { maximum: 2 }
end
