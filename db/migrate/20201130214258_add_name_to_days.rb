class AddNameToDays < ActiveRecord::Migration[6.0]
  def change
    add_column :days, :name, :string
  end
end
