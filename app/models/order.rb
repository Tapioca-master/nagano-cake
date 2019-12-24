class Order < ApplicationRecord
	has_many :order_items, dependent: :destroy
	belongs_to :customer

	@total_price = Cost.sum(:orders.shipping)
end
