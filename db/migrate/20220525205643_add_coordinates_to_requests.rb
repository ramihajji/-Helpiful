class AddCoordinatesToRequests < ActiveRecord::Migration[6.1]
  def change
    add_column :requests, :latitude, :float
    add_column :requests, :longitude, :float
  end
end
