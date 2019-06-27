class AddUserToArticles < ActiveRecord::Migration[5.2]
  def change
    add_reference :articles, :user, foreign_key: true, null: false, default: 1
  end
end
