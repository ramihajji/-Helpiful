class CreateOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :offers do |t|
      t.references :user, null: false, foreign_key: true
      t.references :request, null: false, foreign_key: true
      t.integer :price
      t.text :message

      t.timestamps
    end
  end
end
