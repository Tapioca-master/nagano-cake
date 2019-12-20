class Address < ApplicationRecord
	belongs_to :customer

	validates :customer_id, presence: true
	validates :name, presence: true
	validates :address, presence: true
	validates :postal_code, presence: true, format: {with: /\A[0-9]{3}-[0-9]{4}\z/}
end
