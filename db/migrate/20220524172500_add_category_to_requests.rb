class AddCategoryToRequests < ActiveRecord::Migration[6.1]
  def change
    add_column :requests, :category, :string
  end
end
