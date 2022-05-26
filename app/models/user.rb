class User < ApplicationRecord
    has_many :favorite_cards
    has_many :credit_cards, through: :favorite_cards

end
