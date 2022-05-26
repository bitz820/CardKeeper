class CreditCard < ApplicationRecord
    has_many :favorite_cards
    has_many :users, through: :favorite_cards
end
