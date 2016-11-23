class Changecolumnname < ActiveRecord::Migration[5.0]
  def change
    rename_column :restaurants, :phonenumber, :phone_number
  end
end
