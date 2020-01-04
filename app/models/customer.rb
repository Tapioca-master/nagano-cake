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
def active_for_authentication?
  super && is_active
end

# admin側customer検索機能
  def self.search(search)
    if search
      # 苗字or名前or各かなor(苗字+名前)で検索
      Customer.where("name_last IN (?) OR name_first IN (?) OR name_last_kana IN (?) OR name_first_kana IN (?) OR (name_last || name_first) IN (?) OR (name_last_kana || name_first_kana) IN (?)" , search, search, search, search, search, search)
    else
      Customer.all
    end
  end

end
