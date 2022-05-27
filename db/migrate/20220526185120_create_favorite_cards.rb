class CreateFavoriteCards < ActiveRecord::Migration[7.0]
  def change
    create_table :favorite_cards do |t|
      t.references :user, null: false, foreign_key: true
      t.references :credit_card, null: false, foreign_key: true
      t.index [:user, :credit_card], unique: true
      t.timestamps
    end
  end
end
