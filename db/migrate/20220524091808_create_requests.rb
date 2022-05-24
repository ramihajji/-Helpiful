class CreateRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :requests do |t|
      t.string :title
      t.text :description
      t.string :address
      t.integer :price
      t.boolean :status
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
