class Item < ApplicationRecord
	has_many :order_items
	has_many :cart_items, dependent: :destroy
	belongs_to :genre
	attachment :image
	validates :name, presence: true
	validates :introduction, presence: true
	validates :non_tax_price, presence: true
	validates :genre_id, presence: true
	validates :sales_status, presence: true

	enum sales_status: {
		販売中: 0,
		売り切れ: 1
	}

	# admin側item検索機能
	def self.search(search)
		if search
			Item.where(['name LIKE ?', "%#{search}%"])
		else
			Item.all
		end
	end

end
