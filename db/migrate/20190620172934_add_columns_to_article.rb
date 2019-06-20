class AddColumnsToArticle < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :description, :string, null: false
    add_reference :articles, :admin, foreign_key: true, null: false
  end
end
