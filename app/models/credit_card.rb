class CreditCard < ApplicationRecord
    has_many :favorite_cards
    has_many :users, through: :favorite_cards

    validates :name, :description, :benefits, :annual_fee, :welcome_bonus, :arp, :img_url, presence: true

end
