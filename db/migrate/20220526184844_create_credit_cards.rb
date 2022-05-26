class CreateCreditCards < ActiveRecord::Migration[7.0]
  def change
    create_table :credit_cards do |t|
      t.string :name
      t.string :description
      t.string :benefits
      t.integer :annual_fee
      t.string :welcome_bonus
      t.string :apr
      t.string :img_url

      t.timestamps
    end
  end
end
