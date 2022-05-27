class FavoriteCard < ApplicationRecord
  belongs_to :user
  belongs_to :credit_card

  validates :user, uniqueness: { scope: :credit_card, message: "User already has this card saved!"}

end
