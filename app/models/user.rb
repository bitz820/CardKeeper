class User < ApplicationRecord
    has_secure_password

    has_many :favorite_cards
    has_many :credit_cards, through: :favorite_cards
    
    validates :name, :email, presence: true
    validates :email, uniqueness: true
    validates :age, numericality: {greater_than_or_equal_to: 18}
end
