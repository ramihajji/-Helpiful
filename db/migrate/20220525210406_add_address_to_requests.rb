class AddAddressToRequests < ActiveRecord::Migration[6.1]
  def change
    add_column :requests, :address, :text
  end
end
