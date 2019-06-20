class ChangeNameOnCategory < ActiveRecord::Migration[5.2]
  def change
    change_column :categories, :name, :string, null: false
  end
end
