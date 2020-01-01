class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :orders, dependent: :destroy
         has_many :addresses, dependent: :destroy
         has_many :cart_items, dependent: :destroy

def update_without_current_password(params, *options)
    params.delete(:current_password)

    if params[:password].blank? && params[:password_confirmation].blank?
      params.delete(:password)
      params.delete(:password_confirmation)
    end

    result = update_attributes(params, *options)
    clean_up_passwords
    result
end

# 退会済み会員のログインを受け付けない(aki)
def find_for_authentication(conditions)
  super(conditions.merge(is_active: true))
end

# admin側検索機能
  def self.search(search)
    if search
      Customer.where("name_last IN (?) OR name_first IN (?) OR name_last_kana IN (?) OR name_first_kana IN (?) OR (name_last || name_first) IN (?) OR (name_last_kana || name_first_kana) IN (?)" , search, search, search, search, search, search)
    else
      Customer.all
    end
  end

end
