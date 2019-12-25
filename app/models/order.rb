class Order < ApplicationRecord
	has_many :order_items, dependent: :destroy
	belongs_to :customer

   enum payment: {
   	銀行振込: 0,
   	クレジットカード支払い: 1,
   }
end
